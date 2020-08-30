class UsersController < ApplicationController
  def show
    @user = current_user
    @group = current_user.group
    @hints = @user.hints
    @next_hint = @user.next_hint
    @leaders = UserHint.joins(:hint).where(hints: { group_id: @group.id })
                       .group(:user_id).count
                       .sort_by { |_, value| value.to_i }.reverse.to_h
  end
end
