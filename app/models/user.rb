class User < ActiveRecord::Base
  attr_accessible :email, :name, :username

  has_secure_password

  validates :name, presence: true
  validates :email, uniqueness: true
  validates :username, uniqueness: { case_sensitive: false }  

  before_save { email.downcase! }
  before_save :create_remember_token
  before_save { username.downcase! }

  private
  	def create_remember_token
  		self.remember_token = SecureRandom.urlsafe_base64
  	end
end
