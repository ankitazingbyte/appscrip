class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
