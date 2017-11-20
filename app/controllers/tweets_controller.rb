class TweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  def index
    @tweets = Tweet.order(id: :desc).page(params[:page])
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  def show
  end

  def edit
  end

  def update
    @tweet.update(tweet_params)
    redirect_to tweet_path
  end

  def destroy
    @tweet.destroy
    redirect_to '/tweets'
  end

  private
  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:title, :content, :user_id, :img_url)
  end
end
