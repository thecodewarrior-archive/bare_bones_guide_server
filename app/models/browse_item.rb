class BrowseItem < ActiveRecord::Base
  belongs_to :browse_item
  has_many :browse_items
end
