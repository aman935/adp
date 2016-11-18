class SongsController < ApplicationController

  def showAudio

    if !current_user.nil?
    @str =  params[:id]
    @u = params[:uid]
    @count = Audio.count
  	render layout: 'alt'
  else 
    flash[:notice] = "Sign In Please"
    redirect_to root_path 
  end
  end


  def add
    @s1 = params[:song]
    @s2 = params[:path]
    @s3 = params[:id]
    Playlist.create(song: @s1, path: @s2,user_id: @s3)
    
  end



  def upvote
    @link=Audio.find(params[:id])
    @link.upvote_by current_user
    redirect_to :back
  end

end
