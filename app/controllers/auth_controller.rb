class AuthController < ApplicationController

  def login
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      render json: @user
<<<<<<< HEAD

=======
>>>>>>> master
    else
      render json: {errors: "login failed!"}
    end
  end

end
