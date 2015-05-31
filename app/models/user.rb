class User < ActiveRecord::Base

	has_secure_password

	has_many :tweet, class_name: 'Tweet', 
										foreign_key: 'user_id',
										dependent: :destroy

	has_many :comment, class_name: 'Comment', 
										foreign_key: 'user_id',
										dependent: :destroy

	has_many :followships, class_name: 'Follow', foreign_key: 'star_id', dependent:   :destroy
  has_many :followers, class_name: 'User', :through=> :followships, :source=>'fans'

  has_many :followeeships, class_name: 'Follow', foreign_key: 'fan_id', dependent:   :destroy
  has_many :followees, class_name: 'User', :through=> :followeeships, :source=>'stars'

	validates :email, :uniqueness => true, :allow_nil => false
	validates :username, :uniqueness => true, :allow_nil => false
  validates :password, :presence => true

  def connections
  	Connection.by_user(self.id)
  end

  # has_many :connections, ->(user){where("connections.user_one_id=? OR connections.user_two_id=?", user.id, user.id)}

  # has_many :connections, class_name: 'Connection', foreign_key: 'user_id',dependent: :destroy

  # has_many :connections, class_name: 'Connection', foreign_key: 'connector_id', dependent: :destroy

end
