class TweetsController < ApplicationController

  # def index
  #   @tweets = Tweet.all
  # end
  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    redirect_to root_path
  end




  private

  def tweet_params
    params.require(:tweet).permit(:text,:title)
  end


end
