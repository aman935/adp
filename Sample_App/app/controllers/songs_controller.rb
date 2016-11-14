class SongsController < ApplicationController

  def show
  	@audio = Audio.find(params[:id])
end
