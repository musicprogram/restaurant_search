La base de datos es postgres

rvm use ruby-2.4.0

rvm gemset use rails5.0

en restaurant los metodos que funcionan son el de create y el new en format.js 


tablas

City => has_many Zones
Zones => belongs_to City

Speciality => has_many Restaurants
Restaurants => belongs_to Speciality 
Restaurants => has_many  Dependences 

Dependences => belongs_to Restaurant
Dependences => belongs_to City
Dependences => belongs_to Zone
