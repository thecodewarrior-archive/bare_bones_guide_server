class CreateGuideImages < ActiveRecord::Migration
  def change
    create_table :guide_images do |t|
      t.references :guide_pack_version, index: true
      t.string :path
      t.string :title
      t.string :description
      t.integer :manifest_version

      t.timestamps
    end
  end
end
