require 'open-uri'

class ApiController < ApplicationController
  def index
      books_json = open("http://www.bibliocommons.com/books.json").read
      @books = JSON.parse(books_json)   
  end


  def new
  end

  def edit
  end
end
