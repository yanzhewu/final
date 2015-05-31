class CommentsController < ApplicationController

	before_action :find_user
	def find_user
		if (!session["user_id"].present?)
			redirect_to login_path
		end
	end

	def new
		@tweet_id  = params["tweet_id"]
	end

	def create
		@comment = Comment.new
		@comment.content = params[:comment]
		@comment.tweet_id = params[:tweet_id]
		@comment.date = DateTime.now.to_i
		@comment.user_id = session["user_id"]
		if @comment.save
			respond_to do |format|
				format.js 
			end
		end
	end

	def destroy
		if Comment.find_by(id: params[:id]).delete
			respond_to do |format|
				format.html { redirect_to root_path }
				format.js 
			end
		end
		
	end
end