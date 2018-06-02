class MusicsController < ApplicationController
  before_action :set_music, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  before_action :set_theme, only: [:index, :theme0, :theme1, :theme2, :theme3, :theme4]
  before_action :authenticate_user!, except: [:index, :show]
  def index
  end
  
  def show
  end
  
  
  def new

    @music = current_user.musics.build  


  end
  
  def create
    @music = current_user.musics.build(music_params)
    @music.save
    redirect_to "/musics/#{@music.id}"

  end

    
  def edit
  end
  
  def update
    @music.update(music_params)
    @music.save
    redirect_to "/musics/#{@music.id}"
  end
  
  def destroy
    @music.destroy
    redirect_to '/'
  end
  
  def upvote
    @music.upvote_from current_user
    redirect_to :back    
  end
  
  def downvote
    @music.downvote_from current_user
    redirect_to :back    
  end
  
  def mypage
    @user = current_user
  end
  
  def theme0
  end
  def theme1
  end
  def theme2
  end
  def theme3
  end
  def theme4
  end
  
  

  private
  def set_theme
    @musics = Music.all
  end
  
  def set_music
    @music = Music.find(params[:id])
  end

  def music_params
    params.require(:music).permit(:title, :content, :theme, :image)
  end

    
end
