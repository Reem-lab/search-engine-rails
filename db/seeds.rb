# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'literate_randomizer'

# Article.create(name: LiterateRandomizer.word)
 
(0..10).each do
  Article.create(name: LiterateRandomizer.sentence)
end

Ahoy.geocode = false
ahoy = Ahoy::Tracker.new(request: RequestFaker.new)
10.times do
  article = Article.create(
    name: Faker::Lorem.sentence(word_count: 3),
  )
  rand(15..100).times do
    puts 'Tracking'

    visit = Ahoy::Visit.create!(visit_token: Faker::Alphanumeric.alpha(number: 10))
    Ahoy::Event.create!(name: 'Ran action',
                        properties: {
                          controller: 'articles',
                          action: 'show',
                        },
                        visit:,
                        time: Faker::Time.between(from: 24.hours.ago, to: Time.now))
  end
end