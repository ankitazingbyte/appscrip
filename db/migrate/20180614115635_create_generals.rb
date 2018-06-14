class CreateGenerals < ActiveRecord::Migration[5.1]
  def change
    create_table :generals do |t|
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
