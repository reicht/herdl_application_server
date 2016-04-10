# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  e = Entry.create(title: Faker::Company.name, url: Faker::Internet.url,
                    image_url: Faker::Avatar.image("fake-background-pic", "200x200"),
                    zip: Faker::Address.zip, body: Faker::Hipster.paragraph, category: "Park")

    rand(15..25).times do
      Vote.create(entry_id: e.id)
    end
end

Entry.create(title: "Metropolitan Park At Walnut Creek",
              url: "http://austinparks.org/parks/Walnut%20Creek%20Metropolitan%20Park/",
              image_url: "http://austincitylocals.com/north/wp-content/uploads/2014/09/walnut-creek-metropolitan-park.png",
              zip: "78753",
              body: "Metropolitan Park  has a dog park with areas for both large and small dogs.  as well as nearby parking and restrooms. Dogs are allowed on leash on paths and in the rest of the park as well.",
              category: "Park",
              votes_count: 0)

Entry.create(title: "Mary Moore Searlight Metro Park",
              url: "http://austinparks.org/parks/mary-moore-searight-metropolitan-park/",
              image_url: "http://www.mountainbiketx.com/images/photos/trails/mary_searight/mary_searight10-lg.jpg",
              zip: "78748",
              body: "Large park with plenty of trails located on the south side of Austin. Leashed pets are welcome throughout this lovely Austin park. The park has a dog park as well for pets in need of playtime off the leash.",
              category: "Park",
              votes_count: 0)

Entry.create(title: "Buzzmill",
              url: "http://buzzmillcoffee.com/",
              image_url: "http://d545736c3058798b0eeb-ad12275910b2fcd34aef327c74773107.r39.cf2.rackcdn.com/25003999ab587da969aa88555f4fe105-5ab590dc32002e33dc27681eaa4eca23.jpg",
              zip: "78741",
              body: "Buzzmill has a large space in the back that is great for dogs and kids. Serves coffee, beer & cider around the clock in general-store digs with a back patio.",
              category: "Park",
              votes_count: 0)

Entry.create(title: "Moontower Saloon",
              url: "http://www.moontowersaloon.com/",
              image_url: "http://waggle.today/wp-content/uploads/2015/03/moontower-.jpg",
              zip: "78748",
              body: "Located in Manchaca just south of Austin, this chill dog-friendly hangout with an oak-shaded patio hosting live music, volleyball & food trailers.",
              category: "Park",
              votes_count: 0)

Entry.create(title: "Banger's Sausage House & Beer Garden",
              url: "http://www.bangersaustin.com/",
              image_url: "http://www.austinchronicle.com/binary/f568/food_feature2-1.jpg",
              zip: "78701",
              body: "Bangers has plenty of room for patrons and dogs to stretch their legs. Has an abundance of sausages & beers on tap inside a rustic-chic cottage or outside in the leafy beer garden.",
              category: "Park",
              votes_count: 0)
