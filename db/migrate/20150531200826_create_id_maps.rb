class CreateIdMaps < ActiveRecord::Migration
  def change
    create_table :id_maps do |t|
      t.references :guide_pack_version, index: true
      t.string :guide_id
      t.string :game_id

      t.timestamps
    end
  end
end
