class ItemsController < ApplicationController

    def index 
        items = Item.all
        render json: items
    end 

    def show 
        item = Item.find(params[:id])
        render json: item
    end 

    def new 
        item = Item.new 
        render json: item
    end 

    def create 
        item = Item.create(item_params)
        render json: item 
    end 

    def edit 
        item = Item.find(params[:id])
        render json: item
    end 

    def update 
        itemReview = ItemReview.find(params[:id])
        item = Item.find(params[:id])
        item.update(item_params)
        render json: item
    end 

    def destroy 
        item = Item.find(params[:id])
        item.destroy
        render json: item
    end 

    private 
    def item_params 
        params.permit(:name, :price, :description, :quantity, :image)
    end 
    
end
