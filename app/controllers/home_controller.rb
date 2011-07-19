require 'will_paginate/array'

class HomeController < ApplicationController
  def index
    @title = "Home"
  end
  
  def setup
    puts request.inspect
    render :text => "Google Market Place Setup."
  end
  
  def pagination
    @title = "Home"
    collection = (1..50).to_a
    
    page_number = params[:page] || 1
    
    puts "showing products: #{@@products}"
    
    @paginated = collection.paginate(:page => page_number, :per_page => 10)
  end
end
