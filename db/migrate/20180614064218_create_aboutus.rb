class CreateAboutus < ActiveRecord::Migration[5.1]
  def change
    create_table :aboutus do |t|
      t.string :title
      t.string :heading1
      t.string :body

      t.timestamps
    end
  end
end
