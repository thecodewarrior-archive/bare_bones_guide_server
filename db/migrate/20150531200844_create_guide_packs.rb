class CreateGuidePacks < ActiveRecord::Migration
  def change
    create_table :guide_packs do |t|
      t.string :packid
      t.string :pretty_name
      t.string :description
      t.boolean :is_private

      t.timestamps
    end
  end
end
