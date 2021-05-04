class ItemReviewsController < ApplicationController

    def index 
        itemReviews = ItemReview.all
        render json: itemReviews
    end 

    def show 
        itemReview = ItemReview.find(params[:id])
        render json: itemReview
    end 

    def new 
        itemReview = ItemReview.new 
        render json: itemReview
    end 

    def create 
        itemReview = ItemReview.create(itemReview_params)
        render json: itemReview 
    end 

    def edit 
        itemReview = ItemReview.find(params[:id])
        render json: itemReview
    end 

    def update 
        itemReview = ItemReview.find(params[:id])
        itemReview.update(itemReview_params)
        render json: itemReview
    end 

    def destroy 
        itemReview = ItemReview.find(params[:id])
        itemReview.destroy
        render json: itemReview
    end 

    private 

    def itemReview_params 
        params.permit(:rating, :review, :item_id)
    end
    
end
