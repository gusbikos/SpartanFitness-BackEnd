class ClassReviewsController < ApplicationController

    def index 
        classReviews = ClassReview.all
        render json: classReviews
    end 

    def show 
        classReviews = ClassReview.find(params[:id])
        render json: classReviews
    end 

    def new 
        classReviews = ClassReview.new 
        render json: classReviews
    end 

    def create 
        classReviews = ClassReview.create(classReviews_params)
        render json: classReviews 
    end 

    def edit 
        classReviews = ClassReview.find(params[:id])
        render json: classReviews
    end 

    def update 
        classReviews = ClassReview.find(params[:id])
        classReviews.update(classReviews_params)
        render json: classReviews
    end 

    def destroy 
        classReviews = ClassReview.find(params[:id])
        classReviews.destroy
        render json: classReviews
    end 

    private 

    def classReviews_params 
        params.permit(:name, :password)
    end 
    
end
