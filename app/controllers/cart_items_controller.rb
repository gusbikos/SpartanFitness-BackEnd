class CartItemsController < ApplicationController

    def index 
        cartItems = CartItem.all
        render json: cartItems
    end 

    def show 
        cartItem = CartItem.find(params[:id])
        render json: cartItem
    end 

    def new 
        cartItem = CartItem.new 
        render json: cartItem
    end 

    def create 
        item = Item.find(params[:item_id])
        item.update(quantity: item.quantity - 1)
        cartItem = CartItem.create(cartItem_params)
        render json: cartItem
    end 

    def edit 
        cartItem = CartItem.find(params[:id])
        render json: cartItem
    end 

    def update 
        cartItem = CartItem.find(params[:id])
        cartItem.update(cartItem_params)
        render json: cartItem
    end 

    def destroy 
        item = Item.find(params[:item_id])
        item.update(quantity: item.quantity + 1)
        cartItem = CartItem.find_by(params[:id])
        cartItem.destroy
        render json: cartItem
    end 

    private 

    def cartItem_params 
        params.permit(:user_id, :item_id, :item)
    end 

end
