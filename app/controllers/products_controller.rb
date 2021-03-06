class ProductsController < ApplicationController

    skip_before_action :authorized, only: [:index, :show]

    def index
        products = Product.all

        if params[:q].present?
            products = products.where('name ilike ?', "%#{params[:q]}%")
        end

        render json: products
    end 

    def show
        product = Product.find_by(id: params[:id])
        
        render json: product
    end 

end
