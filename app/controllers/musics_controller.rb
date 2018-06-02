class MusicsController < ApplicationController
  before_action :set_music, only: [:show, :edit, :update, :destroy]
  
  def index
    @musics = Music.all
  end
  
  def show
  end
  
  
  def new
    @music = Music.new  
  end
  
  def create
    @music = Music.new(music_params)
    @music.save
    redirect_to "/musics/#{@music.id}"
  end
    
  def edit
  end
  
  def update
  end
  
  def destroy
    @music.destroy
    redirect_to '/'
  end
  
  private
    def set_music
      @music = Music.find(params[:id])
    end

    def music_params
      params.require(:music).permit(:title, :content, :theme, :image)
    end
  
    
end
