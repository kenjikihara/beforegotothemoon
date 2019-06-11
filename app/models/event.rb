class Event < ApplicationRecord
  has_many :event_images

  accepts_nested_attributes_for :event_images, allow_destroy: true
end
