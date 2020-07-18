class AddOrderToHints < ActiveRecord::Migration[6.0]
  def change
    add_column :hints, :order, :integer
  end
end
