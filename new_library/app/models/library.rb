# t.string :name
# t.string :description
# t.string :address
# t.string :city
# t.string :country
class Library < ApplicationRecord
  has_many :books
  validates :name, presence: true
  validates_uniqueness_of :name
  accepts_nested_attributes_for :books

end
