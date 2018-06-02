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
    @music = Music.new(musci_params)
    @music.save
  end
    
  def edit
  end
  
  def update
  end
  
  def delete
  end
  
  private
    def set_music
      @note = Note.find(params[:id])
    end

    def music_params
      params.require(:music).permit(:title, :content, :theme)
    end
  
    
end
