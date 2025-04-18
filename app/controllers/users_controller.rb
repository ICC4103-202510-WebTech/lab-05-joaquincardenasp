class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end
    def description
        @user = User.find(params[:id])
        render json: { description: @user.description }
    end
end