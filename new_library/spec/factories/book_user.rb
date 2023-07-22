FactoryBot.define do

  factory :book_user do
    user_id {1}
    book_id {2}
    check_in {Time.now - 5.days}
  end

end
