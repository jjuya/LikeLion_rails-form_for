class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(
      title: params[:post][:title],
      content: params[:post][:content],
      img_url: params[:post][:img_url],
      is_active: params[:post][:is_active]
    )
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
