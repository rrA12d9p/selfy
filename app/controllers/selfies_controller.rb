class SelfiesController < ApplicationController
	before_action :selfy

	def index
		@selfies = Selfy.all
	end

	def show
	end

	def new
	end

	def create
		@selfy = Selfy.new(selfy_params)
		if @selfy.save
			redirect_to '/'
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @selfy.update(selfy_params)
			redirect_to '/'
		else
			render 'edit'
		end
	end

	def destroy
		if @selfy.destroy
			redirect_to '/'
		else
			render 'edit'
		end
	end

	def selfy_params
		params.require(:selfy).permit(:body)
	end

	def selfy
		if params[:id]
			@selfy = Selfy.find(params[:id])
		else
			@selfy = Selfy.new
		end
	end
end
