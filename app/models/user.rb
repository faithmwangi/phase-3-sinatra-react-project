# app/models/user.rb
class User < ActiveRecord::Base
    has_many :drinks
  
    def self.authenticate(email, password)
      user = find_by(email: email)
  
      if user && user.password == password
        user
      else
        nil
      end
    end
  
 
    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true
end
  