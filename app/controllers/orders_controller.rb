class OrdersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

def index
    orders = Order.all
    render json: orders
end

def show
    order = Order.find_by(id: params[:id])
    if order
        render json: order
    else record_not_found
    end
end

def create
    newOrder = Order.create(order_params)
    if newOrder.valid?
        render json: newOrder, status: :created
    else
        render json: {errors: newOrder.errors.full_messages}, status: :unprocessable_entity
    end 
end

def update
    order = Order.find_by(id: params[:id])
    if order
      order.update(order_params)
      render json: order
    else record_not_found
    end
end

def destroy
    order = Order.find_by(id: params[:id])
    order.destroy
end

private

def order_params
    params.permit(:location, :order_time)
end

end
