class Restaurant < ApplicationRecord
  belongs_to :specialty
  has_many :dependences

  mount_uploader :image, RestaurantUploader

  validates :image , presence: true
  validates :name , presence: true

end
