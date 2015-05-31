class CreateGuidePacksUsers < ActiveRecord::Migration
  def change
    create_table :guide_packs_users do |t|
      t.belongs_to :guide_pack, index: true
      t.belongs_to :user, index: true
    end
  end
end
