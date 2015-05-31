class FollowsController < ApplicationController

	respond_to :html, :js

	before_action :find_user
	def find_user
		@user = User.find_by_id(params["user_id"])
		if (!session["user_id"].present?)
			redirect_to login_path
		end
	end

	def index
	end

	def new
		
	end

	def create
		follow = Follow.new
		follow.star_id = params["user_id"]
		follow.fan_id = session["user_id"]
		if follow.save
			respond_to do |format|
				format.html
				format.js {render "new"}
			end
		end
	end

	def destroy
		Follow.find_by_id(params["id"]).delete
		respond_to do |format|
			format.js  {render "destroy"}
		end
	end


	end