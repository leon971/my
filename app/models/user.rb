class User < ApplicationRecord
	has_one :address
	attr_accessor
	validates_presence_of :username, :password
	before_save :check_attr
    validates_uniqueness_of :username, message: "Username has already been taken"
	def check_attr
<<<<<<< HEAD
      self.block = 0;
=======
     
      self.block = 0;


>>>>>>> d2f0a26a2b84bdc9081777c0d9b3a223ae62bfc7
	end
end
