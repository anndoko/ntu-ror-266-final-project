class PostsController < ApplicationController
  # Show all the posts
  def index
    @posts = Post.all
  end
end