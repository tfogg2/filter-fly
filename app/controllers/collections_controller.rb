class CollectionsController < ApplicationController
	def index 
		@collections = Collection.all
	end 

	def show 
		@collection = Collection.find(params[:id])
		@filters = Filter.where("collection_id = id" )
=begin
		@filters = Filter.where("collection_id = id" ).find_each do |filter|
			filter.name
		end
=end
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

  	def edit
	    @collection = collection.find(params[:id])

	    respond_to do |format|
	      if @collection.update_attributes(collection_params) 

	        format.html { redirect_to @collection, notice: 'Collection was successfully updated.' }
	        format.json { head :no_content }
	      else
	        format.html { render action: 'edit' }
	        format.json { render json: @collection.errors, status: :unprocessable_entity }
	      end
	   end
  end

  # DELETE /statuses/1
  # DELETE /statuses/1.json
  def destroy
  	@collection = Collection.find(params[:id])
    @collection.destroy
	   respond_to do |format|
	    format.html { redirect_to collections_path }
	    format.json { head :no_content }
	  end
  end
end
