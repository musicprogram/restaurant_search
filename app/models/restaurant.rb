class Restaurant < ApplicationRecord
  belongs_to :specialty
  has_many :dependences

  mount_uploader :image, RestaurantUploader

  validates :image , presence: true
  validates :name , presence: true


  def self.search(search)
       
      if search   
          where(["name LIKE ?", "%#{search}%"])
      else
          all
      end
      
  end
  

end
