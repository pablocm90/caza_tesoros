class HintsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def show
    @hint = Hint.find(params[:id])
  end
end
