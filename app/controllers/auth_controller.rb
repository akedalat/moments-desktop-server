class AuthController < ApplicationController

  def login
    @user = User.find_by(email: params[:email]) || User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      render json: @user
    else
      render json: {errors: "login failed!"}
    end
  end

end
