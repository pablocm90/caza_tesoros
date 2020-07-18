class CreateUserHints < ActiveRecord::Migration[6.0]
  def change
    create_table :user_hints do |t|
      t.references :user, null: false, foreign_key: true
      t.references :hints, null: false, foreign_key: true

      t.timestamps
    end
  end
end
