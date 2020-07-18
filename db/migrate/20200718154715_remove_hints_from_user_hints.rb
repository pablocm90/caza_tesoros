class RemoveHintsFromUserHints < ActiveRecord::Migration[6.0]
  def change
    remove_reference :user_hints, :hints
    add_reference :user_hints, :hint, foreign_key: true
  end
end
