# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

location1 = Location.create name:'Beach', city: 'Mallorca', country: 'Spain'
location2 = Location.create name:'Center', city: 'Madrid', country: 'Spain'
location3 = Location.create name:'Learn', city: 'Ironhack', country: 'Spain'
location4 = Location.create name:'Eat', city: 'Valencia', country: 'Spain'

Visit.create location_id: location1.id, user_name: "Jane", from_date: Date.today+12, to_date: Date.today+14
Visit.create location_id: location1.id, user_name: "Edu", from_date: Date.today, to_date: Date.today+2
Visit.create location_id: location2.id, user_name: "Jordi", from_date: Date.today, to_date: Date.today+5
Visit.create location_id: location3.id, user_name: "Kristian", from_date: Date.today, to_date: Date.today+1
Visit.create location_id: location4.id, user_name: "Oscar", from_date: Date.today, to_date: Date.today+1

User.create user_firstname: "Xavier", user_lastname: "Simo"  
User.create user_firstname: "Dario",  user_lastname: "Cavanillas"  
User.create user_firstname: "German", user_lastname: "Cavanillas"   
User.create user_firstname: "Peter",  user_lastname: "Peterson"   
User.create user_firstname: "Claire", user_lastname: "Clairedottir"  
