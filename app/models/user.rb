class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  
  validates :name, presence: true, length: {maximum: 50}
  Valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
  validates :email, presence: true, format: { with: Valid_email_regex}, uniqueness: {case_sensitive: false}
  validates :password, presence: true, confirmation: true, length: { within: 6..20 }
  
end
