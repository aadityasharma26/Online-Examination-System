class UserController < ApplicationController
  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
    if @user.save
      flash[:successs] = "Welcome to the Online Exam #{@user.username}"
      redirect_to examinees_path
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).parmit(:username, :email, :password)

  end
end
