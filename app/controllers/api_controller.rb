require 'open-uri'

class ApiController < ApplicationController
   def index
    counter = 1
    @stores = []
    until counter == 3 do
      stores_json = open("http://lcboapi.com/stores?per_page=50&page=#{counter}").read
      JSON.parse(stores_json)['result'].each do |store|
        @stores << store
      end
      counter += 1
    end
    @stores
  end

  def show
    store_json = open("http://lcboapi.com/stores/#{params[:id]}").read
    @store = JSON.parse(store_json)
  end

  # def index
  # end

  # def show
  # end

  def new
  end

  def edit
  end
end
