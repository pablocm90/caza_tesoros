class HintsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
  end

  def show
  end
  
  def answer
    @hint = Hint.find(params[:id])
    if @hint.check_correctness(hint_params[:attempt])
      UserHint.create(user: current_user, hint: @hint)
      redirect_to root_path
    else
      flash[:notice] = "Pues parece que no ! 😜"
      render :show
    end
  end
  
  def display
    @user = current_user
    @hint = Hint.find(params[:id])
    @answer = @hint.answer.correct
  end

  def hint_params
    params.require(:hint).permit(:attempt)
  end
end
