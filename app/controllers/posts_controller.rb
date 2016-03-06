class PostsController < ApplicationController
  # Show the entire list
  def index
    @posts = Post.all
  end
  # Show the content of a post
  def show
    @post = Post.find(params[:id])
  end
end