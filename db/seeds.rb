# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

e = Entry.create(title: "Metropolitan Park At Walnut Creek",
              url: "http://austinparks.org/parks/Walnut%20Creek%20Metropolitan%20Park/",
              image_url: "http://austincitylocals.com/north/wp-content/uploads/2014/09/walnut-creek-metropolitan-park.png",
              zip: "78753",
              body: "Metropolitan Park  has a dog park with areas for both large and small dogs.  as well as nearby parking and restrooms. Dogs are allowed on leash on paths and in the rest of the park as well.")

              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
              end
              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
              end

e = Entry.create(title: "Mary Moore Searlight Metro Park",
              url: "http://austinparks.org/parks/mary-moore-searight-metropolitan-park/",
              image_url: "http://www.mountainbiketx.com/images/photos/trails/mary_searight/mary_searight10-lg.jpg",
              zip: "78748",
              body: "Large park with plenty of trails located on the south side of Austin. Leashed pets are welcome throughout this lovely Austin park. The park has a dog park as well for pets in need of playtime off the leash.")

              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
              end
              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
              end

e = Entry.create(title: "Buzzmill",
              url: "http://buzzmillcoffee.com/",
              image_url: "http://d545736c3058798b0eeb-ad12275910b2fcd34aef327c74773107.r39.cf2.rackcdn.com/25003999ab587da969aa88555f4fe105-5ab590dc32002e33dc27681eaa4eca23.jpg",
              zip: "78741",
              body: "Buzzmill has a large space in the back that is great for dogs and kids. Serves coffee, beer & cider around the clock in general-store digs with a back patio.")

              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
              end
              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
              end

e = Entry.create(title: "Moontower Saloon",
              url: "http://www.moontowersaloon.com/",
              image_url: "http://waggle.today/wp-content/uploads/2015/03/moontower-.jpg",
              zip: "78748",
              body: "Located in Manchaca just south of Austin, this chill dog-friendly hangout with an oak-shaded patio hosting live music, volleyball & food trailers.")

              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
              end
              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
              end

e = Entry.create(title: "Banger's Sausage House & Beer Garden",
              url: "http://www.bangersaustin.com/",
              image_url: "http://www.austinchronicle.com/binary/f568/food_feature2-1.jpg",
              zip: "78701",
              body: "Bangers has plenty of room for patrons and dogs to stretch their legs. Has an abundance of sausages & beers on tap inside a rustic-chic cottage or outside in the leafy beer garden.")

              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
              end
              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
              end

10.times do
  e = Entry.create(title: Faker::Company.name, url: Faker::Internet.url,
                    image_url: Faker::Avatar.image("fake-background-pic", "200x200"),
                    zip: Faker::Address.zip, body: Faker::Hipster.paragraph)

                    rand(15..25).times do
                      Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
                    end
                    rand(15..25).times do
                      Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
                    end
end

e = Entry.create(title: "Bouldin Creek Cafe",
              url: "http://bouldincreekcafe.com/",
              image_url: "https://vegansurvivalguidetx.files.wordpress.com/2014/04/front-of-bouldin.jpg",
              zip: "78704",
              body: "Eco-friendly, bohemian cafe offering hearty meatless meals, coffees & a rotating monthly art show.")

              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
              end
              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
              end

e = Entry.create(title: "Home Slice",
              url: "https://homeslicepizza.com/",
              image_url: "http://p-fst2.pixstatic.com/5069e6db74c5b64af7000868._w.1500_s.fit_.jpg",
              zip: "78704",
              body: "Thin-crust slices & pies for dining in or carry out, open late for takeaway on weekends.")

              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
              end
              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
              end

e = Entry.create(title: "Red's Porch",
              url: "http://redsporch.com/",
              image_url: "https://randallmetting.files.wordpress.com/2013/01/reds-porch-downstairs-patio.jpg",
              zip: "78704",
              body: "Beer, burgers & Southern/Tex-Mex eats with a patio, horseshoe pitch & second-story bar with views.")

              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
              end
              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
              end

e = Entry.create(title: "Whole Foods Market",
              url: "http://www.wholefoodsmarket.com/stores/lamar",
              image_url: "http://www.sdcaustin.com/images/pic_a.jpg",
              zip: "78703",
              body: "Eco-minded chain with natural & organic grocery items, housewares & other products (most sell wine).")

              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
              end
              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
              end

e = Entry.create(title: "Moonshine Patio and Grill",
              url: "http://moonshinegrill.com",
              image_url: "http://e23u839nxt-flywheel.netdna-ssl.com/wp-content/uploads/2013/09/Moonshine-3rd-Red-River_0156-2-1000x575.jpg",
              zip: "78701",
              body: "Contemporary comfort food & cocktails in a historic home with a patio.")

              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
              end
              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
              end

e = Entry.create(title: "Opal Divine's Penn Field",
              url: "http://opaldivines.com",
              image_url: "http://spacesift.com/wp-content/uploads/2015/09/patio.jpg",
              zip: "78704",
              body: "Whiskey & beer complement burgers & pub grub, with plenty of seating on the dog-friendly deck.")

              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
              end
              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
              end

e = Entry.create(title: "Güero's Taco Bar",
              url: "http://www.guerostacobar.com/",
              image_url: "http://cdn2-b.examiner.com/sites/default/files/styles/image_content_width/hash/f7/37/f73747e2819947b230f70f4d1010be8a.jpeg?itok=11fBQ9xs",
              zip: "78704",
              body: "A large menu, salsa bar & hand-shaken margaritas in a landmark building with a patio.")

              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
              end
              rand(15..25).times do
                Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
              end

# e = Entry.create(title: "",
#               url: "",
#               image_url: "",
#               zip: "",
#               body: "")
#
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
#               end
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
#               end
#
# e = Entry.create(title: "",
#               url: "",
#               image_url: "",
#               zip: "",
#               body: "")
#
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
#               end
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
#               end
#
# e = Entry.create(title: "",
#               url: "",
#               image_url: "",
#               zip: "",
#               body: "")
#
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
#               end
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
#               end
#
# e = Entry.create(title: "",
#               url: "",
#               image_url: "",
#               zip: "",
#               body: "")
#
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
#               end
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
#               end
#
# e = Entry.create(title: "",
#               url: "",
#               image_url: "",
#               zip: "",
#               body: "")
#
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
#               end
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
#               end
#
# e = Entry.create(title: "",
#               url: "",
#               image_url: "",
#               zip: "",
#               body: "")
#
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
#               end
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
#               end
#
# e = Entry.create(title: "",
#               url: "",
#               image_url: "",
#               zip: "",
#               body: "")
#
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
#               end
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
#               end
#
# e = Entry.create(title: "",
#               url: "",
#               image_url: "",
#               zip: "",
#               body: "")
#
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
#               end
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
#               end
#
# e = Entry.create(title: "",
#               url: "",
#               image_url: "",
#               zip: "",
#               body: "")
#
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 1, down_vote: 0)
#               end
#               rand(15..25).times do
#                 Vote.create(entry_id: e.id, up_vote: 0, down_vote: 1)
#               end
