class PostsController < ApplicationController
  # Show the entire list
  def index
    @posts = Post.all
  end
  # Show the content of a post
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments
  end
  #--------------------------------------------------#
  # Create a post
  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)

    # User
    post.user = current_user

    if post.save!
      redirect_to post_path(post)
    else 
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:topic, :post_text)
  end
end