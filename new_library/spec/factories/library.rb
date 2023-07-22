FactoryBot.define do
  
  factory :library do
    name { Faker::Name.name }
    description {"National Library..."}
    address { Faker::Address.full_address }
    country {"India"}
    city {"Banglore"}
  end
end

