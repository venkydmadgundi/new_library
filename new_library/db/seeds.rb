# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


lib_solapur = Library.create(name: "New Library", description: "All india permit for Solapur", city: "Solapur", country: "India")
lib_pune = Library.create(name: "Shamala Library", description: "All india permit for Pune", city: "Oybe", country: "India")
lib_mumbai = Library.create(name: "Shwetlana Library", description: "All india permit for Mumbai", city: "Mumbai", country: "India")

user_shwetlana = User.create(firstname: "Shwetlana" , lastname: "Madgundi", email: "shweta.madgundi@gmail.com",country: "India",phone_number: "9527400566")
user_sanjana = User.create(firstname: "Sanjana" , lastname: "Madgundi", email: "sanjana.madgundi@gmail.com",country: "India",phone_number: "9527400566")
user_ranjana = User.create(firstname: "Ranjana" , lastname: "Madgundi", email: "ranjana.madgundi@gmail.com",country: "India",phone_number: "9527400566")
user_shamala = User.create(firstname: "Shamala" , lastname: "Madgundi", email: "shamala.madgundi@gmail.com",country: "India",phone_number: "9527400566")
user_vyankatesh = User.create(firstname: "Vyankatesh" , lastname: "Madgundi", email: "vyankatesh.madgundi@gmail.com",country: "India",phone_number: "9623189233")



checkin = Time.now - 10.days
checkout = Time.now - 5.days
book_mario_puzo = Book.create!(name: "The Godfather",
                              author_name: "Mario Puzo",
                              long_description: "Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.",
                              cost: "300",
                              release_on: "1969-03-10",
                              genre: "fiction",
                              library_id: lib_solapur.id,
                              available: 1,
                              check_in: checkin,
                              check_out: checkout,
                              language: "English")
BookUser.create(book_id: book_mario_puzo.id, user_id: user_shwetlana.id, check_in: checkin, check_out: checkout)
BookUser.create(book_id: book_mario_puzo.id, user_id: user_ranjana.id, check_in: checkin - 10.days, check_out: checkout - 11.days)
BookUser.create(book_id: book_mario_puzo.id, user_id: user_sanjana.id, check_in: checkin - 30.days, check_out: checkout - 21.days)

checkin = Time.now - 25.days
book_sidney_sheldon = Book.create(name: "Bloodline",
                                  author_name: "Sidney Sheldon",
                                  long_description: "Bloodline is another thriller novel from bestselling author, Sidney Sheldon. The story revolves around Elizabeth Roffe, who, after the unexpected death of her father, becomes the sole heiress to his billion dollar empire. She also realizes that she is all alone in a world that is hostile towards her.",
                                  cost: "400",
                                  release_on: "1977-01-01",
                                  genre: "novel",
                                  library_id: lib_pune.id,
                                  available: 0,
                                  check_in: checkin,
                                  language: "English")
BookUser.create(book_id: book_sidney_sheldon.id, user_id: user_sanjana.id, check_in: checkin)
BookUser.create(book_id: book_sidney_sheldon.id, user_id: user_shamala.id, check_in: checkin - 10.days, check_out: checkin - 1.days)
BookUser.create(book_id: book_sidney_sheldon.id, user_id: user_vyankatesh.id, check_in: checkin - 30.days, check_out: checkin - 21.days)

checkin = Time.now - 15.days
checkout = Time.now - 10.days
book_james_clear = Book.create(name: "Atomic Habits",
                                    author_name: "James Clear",
                                    long_description: "People think that when you want to change your life, you need to think big. But world-renowned habits expert James Clear has discovered another way.",
                                    cost: "300",
                                    release_on: "2018-01-01",
                                    genre: "nonfiction",
                                    library_id: lib_mumbai.id,
                                    available: 1,
                                    check_in: Time.now - 15.days,
                                    check_out: Time.now - 10.days,
                                    language: "English")
BookUser.create(book_id: book_james_clear.id, user_id: user_ranjana.id, check_in: checkin, check_out: checkout)
BookUser.create(book_id: book_james_clear.id, user_id: user_shwetlana.id, check_in: checkin - 10.days, check_out: checkout - 11.days)
BookUser.create(book_id: book_james_clear.id, user_id: user_sanjana.id, check_in: checkin - 30.days, check_out: checkout - 21.days)


checkin = Time.now - 10.days
book_danielle_steel = Book.create(name: "The Affair",
                                      author_name: "Danielle Steel",
                                      long_description: "In this riveting novel set in Paris, the world's favourite storyteller, Danielle Steel, explores a high-profile affair that reverberates throughout an entire family reminding us that mothers and sisters come together when things fall apart. A year they would never forget.",
                                      cost: "250",
                                      release_on: "2020-20-01",
                                      genre: "fiction",
                                      library_id: lib_pune.id,
                                      available: 0,
                                      check_in: checkin,
                                      language: "English")
BookUser.create(book_id: book_danielle_steel.id, user_id: user_shamala.id, check_in: checkin)
BookUser.create(book_id: book_danielle_steel.id, user_id: user_ranjana.id, check_in: checkin - 10.days, check_out: checkin - 1.days)
BookUser.create(book_id: book_danielle_steel.id, user_id: user_vyankatesh.id, check_in: checkin - 30.days, check_out: checkin - 21.days)
BookUser.create(book_id: book_danielle_steel.id, user_id: user_sanjana.id, check_in: checkin-45.days)

checkin = Time.now - 17.days
checkout = Time.now - 5.days
book_preeti_shenoy = Book.create(name: "Life is what you make it",
                                        author_name: "Preeti Shenoy",
                                        long_description: "Top Books of 2011, ? a Nielsen list, which is released by the Hindustan Times. The book was also selected as one of the all-time bestsellers of 2011 by the Times of India. Life Is What You Make It is based on a love story that has been set in India in the 90s.",
                                        cost: "600",
                                        release_on: "2018-01-01",
                                        genre: "nonfiction",
                                        library_id: lib_solapur.id,
                                        available: 1,
                                        check_in: checkin,
                                        check_out: checkout,
                                        language: "English")

BookUser.create(book_id: book_preeti_shenoy.id, user_id: user_vyankatesh.id, check_in: checkin, check_out: checkout)
BookUser.create(book_id: book_preeti_shenoy.id, user_id: user_shwetlana.id, check_in: checkin - 10.days, check_out: checkout - 11.days)
BookUser.create(book_id: book_preeti_shenoy.id, user_id: user_sanjana.id, check_in: checkin - 30.days, check_out: checkout - 21.days)
BookUser.create(book_id: book_preeti_shenoy.id, user_id: user_ranjana.id, check_in: checkin - 45.days, check_out: checkout-31.days)


checkin = Time.now - 17.days
book_charles_dickens = Book.create(name: "A TALE OF TWO CITIES",
                                          author_name: "Charles Dickens",
                                          long_description: "A Tale of Two Cities is an 1859 historical novel by Charles Dickens, set in London and Paris before and during the French Revolution. The novel tells the story of the French Doctor Manette, his 18-year-long imprisonment in the Bastille in Paris and his release to live in London with his daughter Lucie, whom he had never met. ",
                                          cost: "250",
                                          release_on: "2020-13-09",
                                          genre: "romance",
                                          library_id: lib_solapur.id,
                                          available: 0,
                                          check_in: checkin,
                                          language: "English")
    
BookUser.create(book_id: book_charles_dickens.id, user_id: user_vyankatesh.id, check_in: checkin)

checkin = Time.now - 17.days
checkout = Time.now - 5.days
book_agatha_christie = Book.create(name: "Ac - Sittaford Mystery",
                                            author_name: "Agatha Christie",
                                            long_description: "A seance in a snowbound Dartmoor house predicts a grisly murder. In a remote house in the middle of Dartmoor, six shadowy figures huddle around a small table for a seance. Tension rises as the spirits spell out a chilling message: 'Captain Trevelyan dead murder'.Is this black magic or simply a macabre joke?",
                                            cost: "450",
                                            release_on: "2017-10-05",
                                            genre: "mystery",
                                            library_id: lib_pune.id,
                                            available: 1,
                                            check_in: checkin,
                                            check_out: checkout,
                                            language: "English")

BookUser.create(book_id: book_agatha_christie.id, user_id: user_shamala.id, check_in: checkin, check_out: checkout)
