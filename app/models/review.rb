class Review < ApplicationRecord
  has_many :review_images

  accepts_nested_attributes_for :review_images, allow_destroy: true
end
