class AddGroupToHint < ActiveRecord::Migration[6.0]
  def change
    add_reference :hints, :group, foreign_key: true
  end
end
