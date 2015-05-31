class UsersController < ApplicationController

	before_action :authorize, only: [:show , :update]

	def authorize
		@user = User.find_by(id: params[:id])
		if @user.blank? || session[:user_id] != @user.id
			redirect_to root_url, notice: "Nice try!"
		end
	end

	def index
    if params["keyword"].present?
      @users = User.where("username LIKE ?", "%#{params[:keyword]}%")
    else
      @users = User.all
    end
 	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(username: params[:username], email: params[:email], password: params[:password])
		@user.image = "http://tp1.sinaimg.cn/1631772764/50/40008304461/0";
		if @user.save
			redirect_to root_url, notice: "Thanks for signing up."
		else
			render "new"
		end
	end

	def show
		
	end

	def edit
		@user = User.find_by(id: params[:id])
	end

	def update
		@user = User.find_by(id: params[:id])
		@user.username = params[:username]
		@user.email = params[:email]
		@user.image = params[:image]

		if params[:password] == params[:repassword]
			@user.password = params[:password]
			if @user.save
				redirect_to user_path(params[:id])
			else
				render "edit"
			end
		else
			redirect_to edit_user_path(params[:id]), notice: "Password doesn't match the repassword"
		end
	end
end