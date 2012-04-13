class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :confirm_passwrod
end
