class CreateContactpages < ActiveRecord::Migration[5.1]
  def change
    create_table :contactpages do |t|
      t.string :title
      t.string :subtitle
      t.string :phone
      t.string :address
      t.string :mail

      t.timestamps
    end
  end
end
