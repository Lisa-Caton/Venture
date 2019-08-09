# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'


  puts "Importing countries..."
  CSV.foreach(Rails.root.join('lib/locations.csv')) do |row|
    Location.create! do |location|
      location.code = row[0]
      location.currency = row[1]
      location.country = row[2]
    end
  end
