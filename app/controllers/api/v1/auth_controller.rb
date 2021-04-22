class Api::V1::AuthController < ApplicationController
    
    before_action :authorized, only: [:auto_login]
  
    #REGISTER 
    def signup
      @user = User.create(signup_params)
      if @user.valid?
        token = encode_token({user_id: @user.id})
        render json: {user: @user.serializable_hash(only: [:id, :name, :age, :email]), jwt: token}
      else
        render json: {error: "Invalid username or password"}
      end
    end
  
    #LOGGING IN
    def login
      @user = User.find_by(email: login_params[:email])
  
      if @user && @user.authenticate(login_params[:password])
        token = encode_token({user_id: @user.id})
        render json: {user: @user.serializable_hash(only: [:id, :name, :age, :email]), jwt: token}, status: :accepted 
      else
        render json: {error: "Invalid username or password"}, status: :unauthorized 
      end
    end

    # def login
    #   @user = User.find_by(email: user_params[:email])
  
    #     if @user && @user.authenticate(user_params[:password])
    #       token = encode_token({user_id: @user.id})
    #       render json: {user: @user.serializable_hash(only: [:id, :name, :age :email]), jwt: token}, status: :accepted 
    #     else
    #       render json: {error: "Invalid username or password"}, status: :unauthorized 
    #     end
    # end
    
    def auto_login
      render json: @user
    end

    private

    def login_params
      params.require(:user).permit(:email, :password)
    end

    def signup_params
      params.require(:user).permit(:name, :age, :email, :password)
    end

end 