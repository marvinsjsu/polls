# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do
  User.create!(username: 'marvinsjsu')
  User.create!(username: 'jbarby')
  User.create!(username: 'lighting')
  User.create!(username: 'enguyen')
  User.create!(username: 'nguyennn')

  Poll.create!(title: "All About the NBA 90's", author_id: 1)
  Poll.create!(title: "All About Inventions", author_id: 2)
  Poll.create!(title: "Math Formulas", author_id: 3)
  Poll.create!(title: 'Food from All Over', author_id: 4)
  Poll.create!(title: 'Northern America Trails', author_id: 5)

  Question.create!(body: "Who was the best NBA coach in the 90's?")
  Question.create!(body: "Who was the best defensive-player?")
  Question.create!(body: "Which team had the most wins?")

  Question.create!(body: "")



end