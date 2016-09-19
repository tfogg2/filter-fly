class RefinementsController < ApplicationController

	def index 
		@refinements = Refinement.all
	end 

	def show 
		@refinement = Refinement.find(params[:id])
	end 

	def new 
		@refinement = Refinement.new
		@filter = Filter.new
		@collection = Collection.new

	end

	def is_filter?
		type.downcase == "filter"
	end
	def is_collection?
		type.downcase == "collection"
	end


	def create
		@refinement = Refinement.create(refinement_params)

		respond_to do |format|
		  if @refinement.save
		    format.html { redirect_to @refinement, notice: 'Refinement was successfully created.' }
		    format.json { render json: @refinement, status: :created, location: @refinement }
		  else
		    format.html { render action: "new" }
		    format.json { render json: @refinement.errors, status: :unprocessable_entity }
		  end
		end
	end

	def destroy
	    @refinement = Refinement.find(params[:id])
	    
	    @refinement.destroy

	  	respond_to do |format|
		    format.html { redirect_to refinements_path }
		    format.json { head :no_content }
	 	end
	end



	def refinement_params
    	params.require(:refinement).permit(:name, :tag, :collection_id, :title, :type) 
  	end	


end
