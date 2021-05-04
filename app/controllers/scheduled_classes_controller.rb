class ScheduledClassesController < ApplicationController

    def index 
        scheduledClasses = ScheduledClass.all
        render json: scheduledClasses
    end 

    def show 
        scheduledClass = ScheduledClass.find(params[:id])
        render json: scheduledClass
    end 

    def new 
        scheduledClass = ScheduledClass.new 
        render json: scheduledClass
    end 

    def create 
        scheduledClass = ScheduledClass.create(scheduledClass_params)
        render json: scheduledClass 
    end 

    def edit 
        scheduledClass = ScheduledClass.find(params[:id])
        render json: scheduledClass
    end 

    def update 
        scheduledClass = ScheduledClass.find(params[:id])
        scheduledClass.update(scheduledClass_params)
        render json: scheduledClass
    end 

    def destroy 
        scheduledClass = ScheduledClass.find(params[:id])
        scheduledClass.destroy
        render json: scheduledClass
    end 

    private 

    def scheduledClass_params 
        params.permit(:user_id, :gym_class_id)
    end 
    
end
