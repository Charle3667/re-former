class UsersController < ApplicationController
    def new
        @user = User.new()
    end

    def create
        # @user = User.new(username: params[:username], email: params[:email], password: params[:password])
        @user = User.new(user_params)
        if @user.save
          redirect_to new_user_path
        else
          render :new, status: :unprocessable_entity
        end
        
    end

    private  
    # gives us back just the hash containing the params we need to
    # to create or update a post
    def user_params
      params.require(:user).permit(:username,:email,:password)
    end
end
