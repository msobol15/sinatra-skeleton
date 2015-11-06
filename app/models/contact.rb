class Contact < ActiveRecord::Base

  belongs_to  :page
  
  attr_accessor :first_name, :last_name, :email, :company, :source

  def initialize(first_name, last_name, email, company, source)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @company = company
    @source = source
  end 

end