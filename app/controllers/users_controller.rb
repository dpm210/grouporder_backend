class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found


    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json:user
        else record_not_found
        end
    end

    def create
        newUser = User.create(user_params)
        if newUser.valid?
            render json: newUser, status: :created
        else
            render json: {errors: newUser.errors.full_messages}, status: :unprocessable_entity
        end 
    end

    private 

    def record_not_found
        render json: {error: "User not found"}, status: :not_found
    end 

    def user_params
        params.permit(:email, :password, :first_name, :last_name)
    end

end

