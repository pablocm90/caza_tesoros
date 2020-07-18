class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :correct
      t.string :input_format
      t.integer :range

      t.timestamps
    end
  end
end
