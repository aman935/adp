class SongsController < ApplicationController

  def showAudio
    @str =  params[:id]
    @u = params[:uid]
    @count = Audio.count
  	render layout: 'alt'
  end


  def add
    @s1 = params[:song]
    @s2 = params[:path]
    @s3 = params[:id]
    Playlist.create(song: @s1, path: @s2,user_id: @s3)
    
  end

end

def upvote
  @song=Audio.find(params[:id])
  @song.upvote_by current_user
  redirect_to :back
end

