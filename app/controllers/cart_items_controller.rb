class CartItemsController < ApplicationController

    def create
        cartitem = CartItem.create!({ 
            user: User.find(permitted_params['user_id']),
            product: Product.find(permitted_params['product_id']),
            quantity: permitted_params['quantity']
        })
        render json: cartitem
    end

    def update
        cartitem = CartItem.find_by(id: params[:id])
        cartitem.update!(permitted_params)
        render json: cartitem
    end

    def destroy
        cartitem = CartItem.find_by(id: params[:id])
        cartitem.destroy
        render json: cartitem
    end

    def permitted_params
        params.require(:cartitem).permit(:user_id, :product_id, :quanity)
    end

end
