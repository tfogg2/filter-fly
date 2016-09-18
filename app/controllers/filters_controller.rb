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

  	def edit
	    @filter = Filter.find(params[:id])

	    respond_to do |format|
	      if @filter.update_attributes(@filter_params)
	        format.html { redirect_to @filter, notice: 'Filter was successfully updated.' }
	        format.json { head :no_content }
	      else
	        format.html { render action: 'edit' }
	        format.json { render json: @filter.errors, status: :unprocessable_entity }
	      end
	   	end
  end


  def destroy
    @filter = Filter.find(params[:id])
    
    @filter.destroy

	  respond_to do |format|
	    format.html { redirect_to filters_path }
	    format.json { head :no_content }
	  end
  end



  def filter_params
    params.require(:filter).permit(:name, :tag, :collection_id) 
  end	
end
