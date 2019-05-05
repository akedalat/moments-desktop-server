class AuthController < ApplicationController

  def login
    @user = User.find_by(email: params[:email]) || User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])

      token = JWT.encode({user_id: @user.id}, "super_secret_key")

      render json: {user: UserSerializer.new(@user), token: token}
    else
      render json: {errors: "login failed!"}
    end
  end

  def get_current_user
    # Get the token from front-end via headers key
    token = request.headers["Authorization"]
    # Decode the token using JWT library
    decoded_token =  JWT.decode(token, "super_secret_key")
    # Pull out information from token
    user_id = decoded_token[0]["user_id"]
    # Use the information to find the user
    @user = User.find_by(id: user_id)
    if @user
      render json: {user: UserSerializer.new(@user)}
    else
      render json: {errors: "login failed! Please login again"}
    end
  end

end
