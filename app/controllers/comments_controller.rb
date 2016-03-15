class CommentsController < ApplicationController
  # Create comments
  def create
    
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params.require(:comment).permit(:comment_text)) 
    
    # User    
    @comment.user = current_user

    if @comment.save
      redirect_to post_path(@post)
    else
      render 'posts/show' 
    end

  end
end