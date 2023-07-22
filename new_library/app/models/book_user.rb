class BookUser < ApplicationRecord
  belongs_to :book
  belongs_to :user
  after_save :update_book
  
  def update_book
    book_users_checkouts = BookUser.where(book_id: self.book_id).map(&:check_out)
    self.book.available = book_users_checkouts.include?(nil) ? false : true
    self.book.save
  end
end
