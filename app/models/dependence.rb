class Dependence < ApplicationRecord
  belongs_to :restaurant
  belongs_to :city
  belongs_to :zone
end
