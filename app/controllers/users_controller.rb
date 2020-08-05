class UsersController < ApplicationController
  def show
    @user = current_user
    @hints = @user.hints
    @next_hint = @user.next_hint
    @leaders = UserHint.all.group(:user_id).count.sort_by { |_, value| value.to_i }.reverse.to_h
  end
end
