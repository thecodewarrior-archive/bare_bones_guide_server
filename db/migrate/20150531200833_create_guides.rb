class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.references :guide_pack_version, index: true
      t.string :path
      t.string :title
      t.references :guide_image, index: true
      t.text :content
      t.integer :manifest_version

      t.timestamps
    end
  end
end
