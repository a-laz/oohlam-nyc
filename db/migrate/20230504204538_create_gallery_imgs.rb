class CreateGalleryImgs < ActiveRecord::Migration[7.0]
  def change
    create_table :gallery_imgs do |t|

      t.timestamps
    end
  end
end
