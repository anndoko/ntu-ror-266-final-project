class CommentsController < ApplicationController
  # Create comments
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params.require(:comment).permit(:comment_text)) 
  
    if @comment.save
      redirect_to post_path(@post)
    else
      render 'posts/show' 
    end

  end
end