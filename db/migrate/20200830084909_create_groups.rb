class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :hint_instructions
      t.string :welcome_message

      t.timestamps
    end
  end
end
