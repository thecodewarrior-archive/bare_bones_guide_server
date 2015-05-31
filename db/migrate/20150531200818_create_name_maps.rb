class CreateNameMaps < ActiveRecord::Migration
  def change
    create_table :name_maps do |t|
      t.references :guide_pack_version, index: true
      t.string :guide_id
      t.string :name

      t.timestamps
    end
  end
end
