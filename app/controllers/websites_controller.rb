class WebsitesController < ApplicationController

	def index
		@websites = Website.all
	end

	def create
    Website.create server: params[:server],
             rank: params[:rank]
    redirect_to root_path
	end

	def new
		
	end

	def destroy
		Website.delete(params[:id])
    redirect_to root_path
	end

	def show
		@website = Website.find(params[:id])
	end

	def update
		@website = Website.find(params[:id])
    @website.update server: params[:server],
                 rank: params[:rank]

    redirect_to website_path(@website.id)
	end

	def edit
		@website = Website.find(params[:id])
	end

end
