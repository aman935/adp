class SongsController < ApplicationController

  def showAudio
    @str =  params[:id]
    @count = Audio.count
  	render layout: 'alt'
  end

end
