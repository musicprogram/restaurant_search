# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# => 
		
    #Restaurant.create(name: 'Star Wars', specialty_id: 1)
#   Character.create(name: 'Luke', movie: movies.first)
		
		20.times.each do 
			City.create(:name => Faker::Address.city)
			Specialty.create(:name => Faker::Company.suffix)
			Zone.create(:name => Faker::Address.street_name, :city_id => Faker::Number.between(from = 1, to = 20), :telefono => Faker::PhoneNumber.cell_phone, :direccion => Faker::Address.street_address , :horario => Faker::Date.between(30.days.ago, Date.today))

		end	