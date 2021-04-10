class Api::V1::UsersController < ApplicationController

    skip_before_action :authorized, only: [:create, :login]

    def index
        users = User.all
        render json: users
    end 

    def create
        user = User.create!({
            name: permitted_params['name'],
            age: permitted_params['age'],
            email: permitted_params['email'],
            password: permitted_params['password']
        })

        render json: user
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end 

    def permitted_params
        params.require(:user).permit(:name, :age, :email, :password)
    end
  
end
