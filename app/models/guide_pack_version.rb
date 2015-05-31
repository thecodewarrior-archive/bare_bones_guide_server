class GuidePackVersion < ActiveRecord::Base
  belongs_to :guide_pack
  belongs_to :browse_item
  has_many :guides
  has_many :guide_images
end
