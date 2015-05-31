class GuidePack < ActiveRecord::Base
  has_many :guide_pack_versions
  has_and_belongs_to_many :users
end
