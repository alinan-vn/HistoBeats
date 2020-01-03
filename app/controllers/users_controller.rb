
class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @user = User.find_by(id: params[:id])
        
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params(:name, :user_bio, :password, :password_confirmation))
        if @user.valid? and params[:password] == params[:password_confirmation]
            @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def edit
        @user = User.find_by(id: params[:id])
    end

    def update
        @user = User.find_by(id: params[:id])
        @user.assign_attributes(user_params(:name, :user_bio))
        if @user.valid?
            @user.save
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    def destroy
    end

    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end

end
