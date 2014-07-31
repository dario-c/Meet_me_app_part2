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

user1 = User.create user_firstname: "Xavier", user_lastname: "Simo", email: "xavier@dario.com", password: "mypassword"
user2 = User.create user_firstname: "Dario",  user_lastname: "Cavanillas", email: "dario@dario.com", password: "mypassword"
user3 = User.create user_firstname: "German", user_lastname: "Cavanillas", email: "german@dario.com", password: "mypassword"
user4 = User.create user_firstname: "Peter",  user_lastname: "Peterson", email: "peter@dario.com", password: "mypassword"
user5 = User.create user_firstname: "Claire", user_lastname: "Clairedottir", email: "claire@dario.com", password: "mypassword"

Visit.create location_id: location1.id, user_id: user1.id, from_date: Date.today+12, to_date: Date.today+14
Visit.create location_id: location1.id, user_id: user2.id, from_date: Date.today, to_date: Date.today+2
Visit.create location_id: location2.id, user_id: user3.id, from_date: Date.today, to_date: Date.today+5
Visit.create location_id: location3.id, user_id: user4.id, from_date: Date.today, to_date: Date.today+1
Visit.create location_id: location4.id, user_id: user5.id, from_date: Date.today, to_date: Date.today+1
