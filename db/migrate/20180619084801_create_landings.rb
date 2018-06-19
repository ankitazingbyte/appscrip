class CreateLandings < ActiveRecord::Migration[5.1]
  def change
    create_table :landings do |t|
      t.string :title
      t.string :image
      t.string :heading
      t.text :body

      t.timestamps
    end
  end
end
