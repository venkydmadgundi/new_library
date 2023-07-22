FactoryBot.define do

  factory :book do
    name {Faker::Name.name}
    author_name {Faker::Name.name}
    long_description {"Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger."}
    cost {"500"}
    release_on {"1969-03-10"}
    genre {"fiction"}
    library_id {1}
    available {1}
    check_in {Time.now}
    check_out {Time.now - 5.days}
    language {"English"}
  end

end

