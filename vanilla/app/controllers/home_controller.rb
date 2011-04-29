require 'will_paginate/array'

class HomeController < ApplicationController
  def index
    collection = (1..50).to_a
    
    page_number = params[:page] || 1
    
    puts "showing products: #{@@products}"
    
    @paginated = collection.paginate(:page => page_number, :per_page => 10)
  end
end
