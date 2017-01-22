class Restaurant < ApplicationRecord
  belongs_to :specialty
  has_many :dependences
end
