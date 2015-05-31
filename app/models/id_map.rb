class IdMap < ActiveRecord::Base
  belongs_to :guide_pack_version
  has_many :meta_conditions
end
