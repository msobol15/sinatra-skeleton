class User < ActiveRecord::Base
  
  attr_accessor :user_name, :email, :password

  # def initialize(user_name, email, password)
  #   @user_name = user_name
  #   @email = email
  #   @password = password
  # end 

end