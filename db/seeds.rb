# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create!([
                  { code: 'SFO' },
                  { code: 'JFK' },
                  { code: 'LAX' },
                  { code: 'DFW' }
                ])

Flight.create!([
                 { from_airport: Airport.find_by_id(1), to_airport: Airport.find_by_id(2),
                   date: '2021-02-14', time: ' 09:00:00', duration: 320, vacant_seats: 14 },
                 { from_airport: Airport.find_by_id(3), to_airport: Airport.find_by_id(4),
                   date: '2021-05-16', time: ' 08:00:00', duration: 200, vacant_seats: 3 }
               ])
