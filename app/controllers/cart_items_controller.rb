class CartItemsController < ApplicationController

    def index
        cart_items = CartItem.all
        
        render json: cart_items
    end

    def create
        cart_item = CartItem.create!({ 
            user: User.find(permitted_params['user_id']),
            product: Product.find(permitted_params['product_id']),
            quantity: permitted_params['quantity']
        })

        render json: cart_item
    end

    def show
        cart_item = CartItem.find_by(id: params[:id])
        
        render json: cart_item
    end 

    def update
        cart_item = CartItem.find_by(id: params[:id])
        cart_item.update!(permitted_params)

        render json: cart_item
    end

    def destroy
        cart_item = CartItem.find_by(id: params[:id])
        cart_item.destroy

        render json: cart_item
    end

    def permitted_params
        params.require(:cart_item).permit(:user_id, :product_id, :quanity)
    end

end
