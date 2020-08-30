class AddGroupToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :group, foreign_key: true
  end
end
