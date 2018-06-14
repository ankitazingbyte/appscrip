class CreateFontpages < ActiveRecord::Migration[5.1]
  def change
    create_table :fontpages do |t|
      t.string :title1
      t.string :title2
      t.string :image
      t.string :heading
      t.string :body

      t.timestamps
    end
  end
end
