class Message < ActiveRecord::Base

	belongs_to :connection

	validates_presence_of :content
	 
end
