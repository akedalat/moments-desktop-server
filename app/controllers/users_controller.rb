class UsersController < ApplicationController
  before_action :set_user, only: [:show,:update,:destroy]

  def index
    users = User.all
    render json: users, status: 200
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: 201
    else
      render json:{errors: user.errors.full_messages}
    end
  end

  def update
    @user.update(user_params)
    render json: @user, status: 200
  end

  def destroy
    @user.destroy
    render json: {message:"user successfully deleted :("}
  end

  def show
    render json: @user, status: 200
  end

  private
  def user_params
    params.permit(:name, :username, :password, :email, :avatar)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
