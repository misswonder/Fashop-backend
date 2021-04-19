class OrdersController < ApplicationController

    def index
        orders = Order.includes(order_items: :product).where(user_id: logged_in_user.id)
        
        render json: orders.as_json({
            only: [:id, :ordered_at, :total],
            include: {
                order_items: {
                    include: {
                        product: { only: :name }
                    }
                }
            }
        })
    end
    
    def create
        order_items = permitted_params[:products].map { |product| OrderItem.new(product_id: product[:id], quantity: product[:quantity]) }
        order = Order.create!({
            user_id: logged_in_user.id,
            ordered_at: DateTime.current,
            order_items: order_items
        })

        render json: order.as_json(only: :id)
    end

    def show
        order = Order.find_by(id: params[:id])

        render json: order
    end 

    def permitted_params
        params.require(:order).permit(products: [:id, :quantity])
    end

end
