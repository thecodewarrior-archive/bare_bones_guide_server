class CreateMetaConditions < ActiveRecord::Migration
  def change
    create_table :meta_conditions do |t|
      t.references :id_map, index: true
      t.integer :type
      t.integer :num

      t.timestamps
    end
  end
end
