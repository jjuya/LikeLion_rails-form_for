class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order(:id).page(params[:page])
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])

    @tweet.update(tweet_params)

    redirect_to tweet_path
  end

  def destroy
    @tweet = Tweet.find(params[:id])

    @tweet.destroy

    redirect_to '/tweets'
  end

  private
  def tweet_params
    params.require(:tweet).permit(:title, :content)
  end
end
