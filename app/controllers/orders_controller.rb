class OrdersController < ApplicationController

    def index
        orders = Order.all
        render json: orders
    end
    
    def create
        order = Order.create!({
            user: User.find(permitted_params['user_id']),
            ordered_at: permitted_params['ordered_at']
        })

        render json: order
    end

    def permitted_params
        params.require(:order).permit(:user_id, :ordered_at)
    end

end
