FactoryBot.define do
  factory :user do
    firstname {Faker::Name.first_name}
    lastname {Faker::Name.last_name}
    email {Faker::Internet.email }
    country {"India"}
    phone_number {"919623189233"}
  end
end

