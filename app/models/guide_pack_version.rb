class GuidePackVersion < ActiveRecord::Base
  belongs_to :guide_pack
  belongs_to :browse_item
  has_many :guides
  has_many :guide_images
  has_many :id_maps
  has_many :name_maps
end
