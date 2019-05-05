class AuthController < ApplicationController

  def login
    @user = User.find_by(email: params[:email]) || User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      render json: @user, status: 200
    else
      render json: {errors: "login failed!"}
    end
  end

  def get_current_user
    @user = User.find_by(id: request.headers["Authorization"])
    if @user
      render json: @user, status: 200
    else
      render json: {errors: "login failed! Please login again"}
    end
  end

end
