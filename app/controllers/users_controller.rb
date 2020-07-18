class UsersController < ApplicationController
  def show
    @user = current_user
    @hints = @user.hints
    @next_hint = @user.next_hint
  end
end
