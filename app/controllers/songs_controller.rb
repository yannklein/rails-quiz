class SongsController < ApplicationController
  # def search
  #   @songs = Song.where(title: params[:query])
  # end

  def search
    @songs = Song.where(title: params[:name])
  end

  def index 
    @songs = Song.all
  end

  def show 
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # strong params
  def song_params
    params.require(:song).permit(:title, :year, :category)
  end
end
