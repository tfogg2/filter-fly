class FiltersController < ApplicationController

	def index 
		@filters = Filter.all
	end 

	def show 
		@filter = Filter.find(params[:id])
	end 

	def new 
		@filter = Filter.new
	end
	def create
		@filter = Filter.create (filter_params)

		respond_to do |format|
		  if @filter.save
		    format.html { redirect_to @filter, notice: 'Filter was successfully created.' }
		    format.json { render json: @filter, status: :created, location: @filter }
		  else
		    format.html { render action: "new" }
		    format.json { render json: @filter.errors, status: :unprocessable_entity }
		  end
		end
	end
	def filter_params
    	params.require(:filter).permit(:name, :tag, :collection_id) 
  	end	
end
