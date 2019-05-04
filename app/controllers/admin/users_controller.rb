module Admin
  class UsersController < Admin::BaseController

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        flash[:notice] = 'User has been created'
        redirect_to admin_users_path
      else
        render :new
      end
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:notice] = 'User has been updated'
        redirect_to admin_users_path
      else
        render :edit
      end
    end

    def destroy
      @user = User.find(params[:id]).destroy
      @user.destroy 
        redirect_to admin_users_path, alert: 'User Deleted'
    end

    def index
      @users = User.all
    end

    private 

    def user_params
      params.require(:user).permit(:name, :email )
    end
    
  end
end