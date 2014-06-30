class CommentsController < ApplicationController
	before_action :authenticate_user!, only: :edit
	def create
		@tweet=Tweet.find(params[:tweet_id])
		@comment= @tweet.comments.create(comment_params)
		redirect_to tweet_path(@tweet)

	end
	def destroy
		@tweet=Tweet.find(params[:tweet_id])
		@comment=@tweet.comments.find(params[:id])
		@comment.destroy
		redirect_to @tweet
	end

	private 
	def comment_params
		params.require(:comment).permit(:user,:body)
	end

end
