class CreateDemands < ActiveRecord::Migration[5.1]
  def change
    create_table :demands do |t|
      t.string :title
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
