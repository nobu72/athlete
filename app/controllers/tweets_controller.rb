class TweetsController < ApplicationController

  def index 
    @tweets = Tweets.all
  end

  def new
    @tweet = Tweet.new
  end

end
