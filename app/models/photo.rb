class Photo < ApplicationRecord
  paginates_per 10
  belongs_to :photo_category
  belongs_to :img_size
end
