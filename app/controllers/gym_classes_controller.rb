class GymClassesController < ApplicationController

    def index 
        gymClasses = GymClass.all
        render json: gymClasses
    end 

    def show 
        gymClass = GymClass.find(params[:id])
        render json: gymClass
    end 

    def new 
        gymClass = GymClass.new 
        render json: gymClass
    end 

    def create 
        gymClass = GymClass.create(gymClass_params)
        render json: gymClass 
    end 

    def edit 
        gymClass = GymClass.find(params[:id])
        render json: gymClass
    end 

    def update 
        gymClass = GymClass.find(params[:id])
        gymClass.update(gymClass_params)
        render json: gymClass
    end 

    def destroy 
        gymClass = GymClass.find(params[:id])
        gymClass.destroy
        render json: gymClass
    end 

    private 

    def gymClass_params 
        params.permit(:date, :booked, :time)
    end 

end
