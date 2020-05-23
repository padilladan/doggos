class Api::UsersController < ApplicationController
    def index
        @users = User.all

        render "index.json.jbuilder"
    end

    def create 
        user = User.new(
          first_name: params[:first_name],
          last_name: params[:last_name],
          doggo_id: params[:doggo_id],
          email: params[:email],
          password: params[:password],
          password_confirmation: params[:password_confirmation]
        )
    
        if user.save
          render json: {message: 'User created successfully'}, status: :created
        else
          render json: {errors: user.errors.full_messages}, status: :bad_request
        end
    end  
      
    def destroy
        @user = User.find_by(id: params[:id])
        @user.destroy

        render json: {message: 'User deleted successfully'}
    end

    def show
        @user = User.find_by(id: params[:id])
    
        render "show.json.jbuilder"
    end
end
