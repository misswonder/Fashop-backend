class AuthController < ApplicationController
    
    before_action :authorized, only: [:auto_login]
  
    #REGISTER
    def create
      @user = User.create(user_params)
      if @user.valid?
        token = encode_token({user_id: @user.id})
        render json: {user: @user, token: token}
      else
        render json: {error: "Invalid username or password"}
      end
    end
  
    # LOGGING IN
    def create
      @user = User.find_by(email: user_params[:email])
  
      if @user && @user.authenticate(user_params[:password])
        token = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), jwt: token}, status: :accepted 
      else
        render json: {error: "Invalid username or password"}, status: :unauthorized 
      end
    end
  
  
    def auto_login
      render json: @user
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

end 