class SongsController < ApplicationController

  def showAudio
    @str =  params[:id]
    @count = Audio.count
  	render layout: 'alt'
  end
  def upvote
    @song=Audio.find(params[:id])
    @song.upvote_by current_user
    redirect_to :back
  end
