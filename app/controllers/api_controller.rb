class ApiController < ApplicationController
  def index
      books_json = open("http://www.bibliocommons.com/books.json").read
      book_presort = JSON.parse(books_json)
    if params[:order_by] == "availability"
      @books = book_presort.sort_by{ |k| k['availability']['id'] }
    elsif params[:order_by] == "format"
      @books = book_presort.sort_by{ |k| k['format']['name'] }
    else
      @books = book_presort.sort_by{ |k| k['title'] }      
    end

    respond_to do |format|
      format.html
      format.js {}
    end
  end

end


