class OrderItemsController < ApplicationController

    def index
        orderitems = OrderItem.all
        render json: orderitems
    end 
    
    def show
        orderitem = OrderItem.find_by(id: params[:id])
        render json: order_item
    end 

end
