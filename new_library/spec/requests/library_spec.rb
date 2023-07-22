RSpec.describe "Libraries", type: :request do
  describe "GET /libraries" do
    let(:book_user1_checkin) { Time.now - 7.days }
    let(:book_user2_checkin) { Time.now - 10.days }
    let(:book_user2_checkout) { Time.now - 3.day }
    it "returns library with nested books" do
      library = FactoryBot.create(:library)
      user1 = FactoryBot.create(:user)
      user2 = FactoryBot.create(:user)
      book1 = FactoryBot.create(:book, library_id: library.id)
      book2 = FactoryBot.create(:book, library_id: library.id)
      
      # Validating before update
      expect(book1.available).to eq(true)
      expect(book2.available).to eq(true)

      FactoryBot.create(:book_user, user_id: user1.id, book_id: book1.id, check_in: book_user1_checkin)
      FactoryBot.create(:book_user, user_id: user2.id, book_id: book1.id, check_in: book_user2_checkin, check_out: book_user2_checkout) 

      get "/libraries"
      json = JSON.parse(response.body)
      expect(response).to have_http_status(:success)

      # Validating Library details
      expect(json.first["name"]).to eq(library.name)
      expect(json.first["description"]).to eq(library.description)
      expect(json.first["address"]).to eq(library.address)
      expect(json.first["city"]).to eq(library.city)
      expect(json.first["country"]).to eq(library.country)
      expect(json.first["books"].count).to eq(2)

      # Validating first books details
      expect(json.first["books"].first["name"]).to eq(book1.name)
      expect(json.first["books"].first["author_name"]).to eq(book1.author_name)
      expect(json.first["books"].first["users"].count).to eq(2)

      # Update first book
      expect(json.first["books"].first["available"]).to eq(false)

      # Validating first user
      expect(json.first["books"].first["users"].first["firstname"]).to eq(user1.firstname)
      expect(json.first["books"].first["users"].first["lastname"]).to eq(user1.lastname)
      expect(json.first["books"].first["users"].first["email"]).to eq(user1.email)

      # Validating second user
      expect(json.first["books"].first["users"].second["firstname"]).to eq(user2.firstname)
      expect(json.first["books"].first["users"].second["lastname"]).to eq(user2.lastname)
      expect(json.first["books"].first["users"].second["email"]).to eq(user2.email)

      # Validating second books details
      expect(json.first["books"].second["name"]).to eq(book2.name)
      expect(json.first["books"].second["author_name"]).to eq(book2.author_name)
      expect(json.first["books"].second["users"].count).to eq(0)

      # Update second book
      expect(json.first["books"].second["available"]).to eq(true)

    end
  end

end
