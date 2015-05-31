class GuidePackVersion < ActiveRecord::Base
  belongs_to :guide_pack
  belongs_to :browse_item
  has_many :guides
end
