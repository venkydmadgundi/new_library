# t.string :firstname
# t.string :lastname
# t.string :email
# t.string :country
# t.string :phone_number

class User < ApplicationRecord
  has_many :book_users, dependent: :destroy
  has_many :books, through: :book_users

  validates :firstname, :lastname, :email, presence: true
  validates_uniqueness_of :email
  validates :email, format: { with: /\A(.+)@(.+)\z/, message: "Email invalid"  }, 
            uniqueness: { case_sensitive: false }, 
            length: { minimum: 4, maximum: 254 }
end
