# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# => 
		Specialty.create(name: 'especialidad 1')
    Restaurant.create(name: 'Star Wars', specialty_id: 1)
#   Character.create(name: 'Luke', movie: movies.first)
