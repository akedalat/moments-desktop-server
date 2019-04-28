class PostsController < ApplicationController
  before_action :set_post, only: [:show,:update,:destroy]

  def index
    posts = Post.all
    render json: posts, status: 200
  end

  def create
    post = Post.new(post_params)
    if post.save
      render json: post, status: 201
    else
      render json: {errors: post.errors.full_messages}
    end
  end

  def update
    @post.update(post_params)
    render json: @post, status: 200
  end

  def destroy
    @post.destroy
    render json: {message:"Zap! post deleted"}
  end

  def show
    render json: @post, status: 200
  end

  private

  def post_params
    params.permit(:caption, :image, :user_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
