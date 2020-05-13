class CommentsController < ApplicationController
  # def index
  #   @comment = Comment.all.
  # end
  
  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.new(comment_params)

    if @comment.save
      redirect_to topics_path, success: 'コメントの投稿に成功しました'
    else
      flash.now[:danger] = "コメントの投稿に失敗しました"
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:topic_id, :comment)
  end
end
