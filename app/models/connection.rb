class Connection < ActiveRecord::Base

  has_one :user_one, class_name: "User", foreign_key: "user_one_id"
  has_one :user_two, class_name: "User", foreign_key: "user_two_id"

  def self.by_user(user_id)
  	where("user_one_id = :person_id OR user_two_id = :person_id", person_id: user_id)
  end

	has_many :messages, class_name: 'Message', foreign_key: 'connection_id'

end
