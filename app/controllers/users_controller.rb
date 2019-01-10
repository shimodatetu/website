class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash.now[:success] = "登録に成功しました"
      redirect_to new_user_path
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
