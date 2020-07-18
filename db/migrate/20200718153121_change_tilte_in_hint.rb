class ChangeTilteInHint < ActiveRecord::Migration[6.0]
  def change
    remove_column :hints, :tilte
    add_column :hints, :title, :string
  end
end
