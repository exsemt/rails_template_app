# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'create admin'
User.create(salutation: 'mr', name: 'Super Admin', email: 'admin@exsemt.de', role: :admin, password: '1234qwer')
