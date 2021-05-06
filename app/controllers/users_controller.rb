class UsersController < ApplicationController
    before_action :authenticate, only: [:me, :update, :delete]

    def google_login
        user = AuthorizeGoogleRequest.new(request.headers).user
        if user 
            token = JsonWebToken.encode({ user_id: user.id })
            render json: { user: UserSerializer.new(user), token: token }
        else 
            render json: { errors: ['Oops, something went wrong!']}, status: :unauthorized
        end
    end

    def login 
        #////// FAKE AUTH WAY //////
        # user =  User.first #User.find(name: params[:name])
        # render json: user
        # const token = localStorage.setItem("token")

        user = User.find_by(name: params[:username])
        # byebug
        if user && user.authenticate(params[:password])
            token = JsonWebToken.encode({ user_id: user.id })
            render json: { user: UserSerializer.new(user), token: token }
        else 
            render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
    end

    def signup 
        user = User.create(user_params)
        if user.valid?
            token = JsonWebToken.encode({ user_id: user.id })
            render json: { user: UserSerializer.new(user), token: token }, status: :created
        else  
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def me 
        render json: @current_user
    end 

    def index 
        users = User.all
        render json: users
    end 

    def show 
        user = User.find(params[:id])
        render json: user
    end 

    def new 
        user = User.new 
        render json: user
    end 

    def create 
        user = User.create(user_params)
        render json: user 
    end 

    def edit 
        user = User.find(params[:id])
        render json: user
    end 

    def update 
        @current_user.update(user_params)
        render json: @current_user
    end 

    def destroy 
        user = User.find(params[:id])
        user.destroy
        render json: user
    end 

    private 

    def user_params 
        params.permit(:name, :password, :email)
    end 
    
end
