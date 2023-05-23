class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.new(comment_params)
    @comment.post = Post.find(params[:post_id])

    if @comment.save
      flash[:success] = 'Comment created successfully'
    else
      flash[:error] = 'Something went wrong'
    end

    redirect_to user_post_path(@comment.post.author, @comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end