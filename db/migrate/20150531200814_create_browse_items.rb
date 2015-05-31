class CreateBrowseItems < ActiveRecord::Migration
  def change
    create_table :browse_items do |t|
      t.references :browse_item, index: true
      t.boolean :is_directory
      t.string :value

      t.timestamps
    end
  end
end
