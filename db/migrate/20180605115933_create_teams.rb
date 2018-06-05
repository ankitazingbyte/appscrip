class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :image
      t.string :designation

      t.timestamps
    end
  end
end
