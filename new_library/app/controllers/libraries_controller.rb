class LibrariesController < ApplicationController

  # GET /libraries
  def index
    @libraries = Library.all.includes(books: :users)
    
    render json: @libraries.to_json(include: { books: { include: :users}})
  end

end
