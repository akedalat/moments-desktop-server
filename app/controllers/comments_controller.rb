
class CommentsController < ApplicationController

  before_action :set_post

  def index
  @post.comments
  render json: @post.comments, status: 200
  end
  #
  def show
   @comment = @post.comments.find(params[:id])
   render json: @comment, status: 200
  end

  # def new
  #     @comment = Comment.new
  # end

  def create
    @comment = @post.comments.create(comment_params)

    if @comment.save
      render json: @comment, status: 201
    else
      render json: {errors: @comment.errors.full_messages}
    end

  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    render json: {message:"Zap! comment deleted"}
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

end
