class CollectionsController < ApplicationController
	def index 
		@collections = Collection.all
	end 

	def show 
		@collection = Collection.find(params[:id])
	end 
	def new 
		@collection = Collection.new
	end
	def create
		@collection = Collection.create (collection_params)

		respond_to do |format|
		  if @collection.save
		    format.html { redirect_to @collection, notice: 'Collection was successfully created.' }
		    format.json { render json: @collection, status: :created, location: @collection }
		  else
		    format.html { render action: "new" }
		    format.json { render json: @collection.errors, status: :unprocessable_entity }
		  end
		end
	end
	def collection_params
    	params.require(:collection).permit(:title, :tag) 
  	end	
end
