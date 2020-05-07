# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Edition
name = "Feb-Jun 2020"
start_date = Date.new(2020, 2, 1)
end_date = Date.new(2020, 6, 1)
Edition.create(name: name, start_date: start_date, end_date: end_date)

# Institution
name = "Tecnológico de Monterrey Campus Monterrey"
city = "Monterrey"
Institution.create(name: name, city: city)
