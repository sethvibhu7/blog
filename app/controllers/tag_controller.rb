class TagController < ApplicationController
	def index
		@tag=Tag.where(name: params[:tag]).first
		
		@tweets=if @tag
		@tag.tweets
		else
		[] 
	end
		@mode=params[:tag]
	end
end
