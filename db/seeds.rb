# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.destroy_all
#Group.destroy_all

user1 = User.create(title: "Tech", name: "Sam", email: "sam@gmail.com", password: "12345678", password_confirmation: "12345678")
user2 = User.create(title: "Dance", name: "Edward", email: "edward@gmail.com", password: "12345678", password_confirmation: "12345678")
user3 = User.create(title: "Music", name: "Lani", email: "lani@gmail.com", password: "12345678", password_confirmation: "12345678")
user4 = User.create(title: "Photography", name: "Bre", email: "bre@gmail.com", password: "12345678", password_confirmation: "12345678")

group1 = Group.create(name: "Tsunami Mob")

group1.users << user1
group1.users << user2
group1.users << user3
group1.users << user4

