class CreateGuidePackVersions < ActiveRecord::Migration
  def change
    create_table :guide_pack_versions do |t|
      t.string :version
      t.references :guide_pack, index: true
      t.references :browse_item, index: true

      t.timestamps
    end
  end
end
