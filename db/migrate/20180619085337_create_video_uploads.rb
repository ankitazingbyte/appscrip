class CreateVideoUploads < ActiveRecord::Migration[5.1]
  def change
    create_table :video_uploads do |t|
      t.string :video

      t.timestamps
    end
  end
end
