class Tweet < ActiveRecord::Base

	validates_presence_of :content

	belongs_to :user, class_name: 'User', foreign_key: 'user_id'

	has_many :comments, class_name: 'Comment', foreign_key: 'tweet_id'

	has_many :like

	has_many :liker, class_name: 'User', :through => :like

end
