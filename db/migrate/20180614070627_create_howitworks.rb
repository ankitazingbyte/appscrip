class CreateHowitworks < ActiveRecord::Migration[5.1]
  def change
    create_table :howitworks do |t|
      t.string :title1
      t.string :title2
      t.string :heading
      t.string :body
      t.string :image

      t.timestamps
    end
  end
end
