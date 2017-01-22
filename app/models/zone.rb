class Zone < ApplicationRecord
  belongs_to :city

	validates :name , presence: true
	validates :city_id , presence: true

	validates :telefono , presence: true

	validates :direccion , presence: true

	validates :horario , presence: true



end
