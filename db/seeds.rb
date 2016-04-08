# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rand(10..15).times do
  e = Entry.create(title: Faker::Company.name, url: Faker::Internet.url,
                    image_url: Faker::Internet.url('website.com', '/picture.jpg'),
                    zip: Faker::Address.zip, body: Faker::Hipster.paragraph)

    rand(15..25).times do
      Vote.create(entry_id: e.id)
    end
end
