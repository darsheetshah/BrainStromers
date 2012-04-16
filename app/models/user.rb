class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  
  validates :name, presence: true, length: {maximum: 50}
  Valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
  validates :email, presence: true, format: { with: Valid_email_regex}, uniqueness: {case_sensitive: false}
  validates :password, presence: true, confirmation: true, length: { within: 6..20 }
  
  before_save :create_remember_token
  
  def authenticate(email, password)
  user=User.find_by_email(email)
  return user if user[:password]==password
  end
  
  private
  def create_remember_token
  self.remember_token = SecureRandom.urlsafe_base64
  end
  
end
