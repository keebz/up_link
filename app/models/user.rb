class User < ActiveRecord::Base
	has_secure_password
	validates_uniqueness_of :email
	validates_presence_of :password
	has_many :links, :through => :comments 
end
