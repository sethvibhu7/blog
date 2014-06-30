class TweetsController < ApplicationController
 before_action :authenticate_model!, only: [:edit, :destroy, :create]
  def new
    @tweet=Tweet.new
  end
  def index
   @tweets = if params[:tag]
     @mode=params[:tag]
     Tweet.where(tag: params[:tag])
     
    else 
  	Tweet.all 
    end
  end

  def create
  	@tweet = Tweet.new(tweet_params)
  	if @tweet.save
  	 redirect_to @tweet
    else 
      render action: 'new'
    end
  end

  def show
  		@tweet =Tweet.find(params[:id])
  end
  def update
    @tweet =Tweet.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to @tweet
    else
      render 'edit'
    end
  end
  def edit
  @tweet = Tweet.find(params[:id])
end

def destroy
  tweet=Tweet.find(params[:id])
  tweet.destroy

  redirect_to tweets_path
end
  private
  def tweet_params
    params.require(:tweet).permit(:tag, :status)
  end
end
