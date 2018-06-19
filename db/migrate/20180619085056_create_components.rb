class CreateComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :components do |t|
      t.string :heading
      t.string :image
      t.string :title

      t.timestamps
    end
  end
end
