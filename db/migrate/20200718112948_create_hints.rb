class CreateHints < ActiveRecord::Migration[6.0]
  def change
    create_table :hints do |t|
      t.references :answer, null: false, foreign_key: true
      t.string :tilte
      t.text :description

      t.timestamps
    end
  end
end
