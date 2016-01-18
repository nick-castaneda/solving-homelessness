# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do
  Donation.create(
    cause: 'food',
    name: 'Nihn',
    street_address: '123 chill st.',
    city: 'Los Angeles',
    state: 'CA',
    zip: 91342,
    cc_type: "Discover",
    cc_expir: 1219,
    cc_sec: 143,
    amount: rand(20)
  )
end
