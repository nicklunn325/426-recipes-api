class UsersController < ApplicationController
    def create 
        user = User.create(user_params)
        render json: user, status: :created
    end

    def index
        users = User.all
        render json: users
    end

    private
    def user_params
        params.require(:user).permit(:name, :password, :motto, :website, :profile_picture)
    end
end
