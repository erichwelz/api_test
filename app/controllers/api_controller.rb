require 'open-uri'

class ApiController < ApplicationController
  def index
      books_json = open("http://www.bibliocommons.com/books.json").read
      book_presort = JSON.parse(books_json)
    if params[:order_by] == "Availability"
      @books = book_presort.sort_by{ |k| k['availability'].fetch('id') }
    elsif params[:order_by] == "Format"
      @books = book_presort.sort_by{ |k| k['format'].fetch('name') }
    else
      @books = book_presort.sort_by{ |k| k['title'] }      
    end
  end


  def new
  end

  def edit
  end
end


