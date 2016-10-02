class RefinementsController < ApplicationController

	def index 
		@refinements = Refinement.all
		@filter = Filter.new
		@collection = Collection.new
		@filters = Filter.all
		@collections = Collection.all
		
		

=begin
if params[:search]
	    @refinements = Refinement.search(params[:search])
	  else
	    @refinements = Refinement.all
	  end





		@refinements = Refinement.search(params[:search])
		
=end
	end 

	def design
		@collections = Collection.all  
		@filters = Filter.all
	end

	def show 
		@refinement = Refinement.find(params[:id])

	end 

	def find_each_filter
		@refinements = Refinement.all
		@refinements.find_each(:conditions => "type = Filter") do |filter|
    		filter.name
  		end
  	end

	def new 
		@refinement = Refinement.new()


=begin
		@filter = Filter.new
		@collection = Collection.new
		@collections = Collection.all
=end
	end


	def is_filter?
		type.downcase == "filter"
	end
	def is_collection?
		type.downcase == "collection"
	end


	Refinement::TYPES = %w[filter collection]

	def create
=begin
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
=end
			@filter = Filter.create(refinement_params)

			respond_to do |format|
			  if @filter.save
			    format.html { redirect_to @filter, notice: 'Filter was successfully created.' }
			    format.json { render json: @filter, status: :created, location: @filter }
			  else
			    format.html { render action: "new" }
			    format.json { render json: @filter.errors, status: :unprocessable_entity }
			  end
			end
			
		else
=begin
			@collection = Collection.create(refinement_params)

			respond_to do |format|
			  if @collection.save
			    format.html { redirect_to @collection, notice: 'Collection was successfully created.' }
			    format.json { render json: @collection, status: :created, location: @collection }
			  else
			    format.html { render action: "new" }
			    format.json { render json: @collection.errors, status: :unprocessable_entity }
			  end
			end
=end
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
			params.require(:filter).permit(:name, :tag, :collection_id)
			
	end


=begin
params.require(:collection).permit( :title, :tag)

def refinement_params(type)
		case type
		 when "collection"
		 	params.require(:collection).permit(collection_attributes)
		 when "filter"
		   params.require(:filter).permit(:name, :tag, :collection_id)
	end

def filter_params
		    	params.require(:filter).permit(:name, :tag, :collection_id) 
			end	
def collection_params
    		params.require(:collection).permit(:title, :tag) 
  		end
	
=end
  	

	

end
