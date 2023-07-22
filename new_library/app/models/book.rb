# t.string :name
# t.string :author_name
# t.text :long_description
# t.float :cost
# t.datetime :release_on
# t.integer :genre, default: 0 
# t.references :library, null: false, foreign_key: true
# t.boolean :available
# t.datetime :check_in
# t.datetime :check_out
# t.string :language

class Book < ApplicationRecord
  belongs_to :library
  enum genre: %i[fiction nonfiction mystery romance novel no_category]
  
  has_many :book_users, dependent: :destroy
  has_many :users, through: :book_users

  validates :name, :author_name, :language, presence: true
  validates_uniqueness_of :name
end
