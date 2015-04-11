class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new
    
    if @user.save
      flash[:notice] = "Congratulations. Your account has been created!"
      redirect_to root_path
    else
      render :new
    end
  end
end
