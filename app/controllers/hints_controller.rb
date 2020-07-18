class HintsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
  end

  def show
    @user = current_user
    @hint = Hint.find(params[:id])
  end

  def answer
    @hint = Hint.find(params[:id])
    if @hint.check_correctness(hint_params[:attempt])
      UserHint.create(user: current_user, hint: @hint)
      redirect_to root_path
    else
      render :show
    end
  end

  def hint_params
    params.require(:hint).permit(:attempt)
  end
end
