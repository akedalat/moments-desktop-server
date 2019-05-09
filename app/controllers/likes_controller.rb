class LikesController < ApplicationController
  before_action :set_post

  def create
    @like = @post.likes.create(like_params)
    if @like.save
      render json: @like, status: 201
    else
      render json: {errors: @like.errors.full_messages}
    end
  end

  def destroy
    @like = @post.likes.find(params[:id])
    @like.destroy
    render json: {message:"Zap! like deleted"}
  end

  private

  def like_params
    params.permit(:user_id, :post_id)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
end
