class AddGuidePackToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :guide_pack, index: true
  end
end
