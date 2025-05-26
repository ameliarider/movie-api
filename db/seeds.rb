# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
# #   end
# require 'ffaker'

# # first_name: nil, last_name: nil, subject: nil

# 10.times do
#   actor = Actor.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Music.genre)
# end

# actor = Actor.create(first_name: "Bradley", last_name: "Cooper", known_for: "drama", movie_id: 5)

movie = Movie.create(name: "A Star Is Born", description: "Music", release_data: "2018",)
