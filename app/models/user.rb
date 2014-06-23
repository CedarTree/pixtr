class User < ActiveRecord::Base
	  has_many :galleries
	  has_many :images, through: :galleries
	  #has_many : users don't work b/c images belong to galleries. Images don't 
	  #have foreigin keys in User database.
	  #through: changes the SQl query

      validates :email, presence: true, uniqueness: true

      validates :password_digest, presence: true

end