class MessagesController < ApplicationController

	before_action :find_connection
	def find_connection
		@connection = Connection.find_by_id(params["connection_id"])
		@connector_id =  @connection.user_one_id == session["user_id"]? @connection.user_two_id : @connection.user_one_id
	end

	def index
		@user = User.find_by_id(session["user_id"])
		@messages = @connection.messages.limit(100).order("date")
	end

	def create
		message = Message.new
		message.content = params["message"]
		message.connection_id = params["connection_id"]
		message.sender_id = session["user_id"]
		message.receiver_id = @connector_id
		message.date = DateTime.now.to_i
		if message.save
			redirect_to connection_messages_path(params["connection_id"])
		end
	end

	def destroy
		
	end

end