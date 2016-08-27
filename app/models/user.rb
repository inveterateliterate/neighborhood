class User < ApplicationRecord

	validates_presence_of :first_name, :last_name, :email, :username, :password
	validates_uniqueness_of :email, :username
	has_secure_password

	has_many :restaurants, through: :listings
	has_many :listings, dependent: :destroy
	has_many :cards


	def self.authenticate(email, password)
		@user = User.find_by_email(email)
		 if !@user.nil?
		 	if @user.authenticate(password)
		 		return @user
		 	end
		 end

		 return nil
	end
end
