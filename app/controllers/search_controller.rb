class SearchController < ApplicationController

	def showsearch
		if !current_user.nil?
         @search = params[:search].downcase
		render layout: 'alt'
  else

    flash[:notice] = "Sign In Please"
    redirect_to root_path 
  end
		
	end
end
