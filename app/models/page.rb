class Page < ActiveRecord::Base
  
  attr_accessor :page_name, :page_url, :page_id, :page_visitor_count

  def initialize(page_name, page_url, page_id, page_visitor_count)
    @page_name = page_name
    @page_url = page_url
    @page_id = page_id
    @page_visitor_count = page_visitor_count  
  end 

end