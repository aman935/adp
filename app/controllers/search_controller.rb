class SearchController < ApplicationController

	def showsearch
		@search = params[:search].downcase
		render layout: 'alt'
	end
end
