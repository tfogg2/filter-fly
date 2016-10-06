class ProductsController < ApplicationController
	def index 
		# All products for this collection
		@collection = ShopifyAPI::Collection.find(params[:collection_id])
		@products = @collection.products

		@modified_products = @products.select do |p| 
			# Google, "rails array include value from other array" .any?
			p[:tags].include?(params[:tag])
		end

		respond_to do |format|
			format.json { render json:@modified_products.to_json }
		end
	end 
end

# /products?collection_id=1234&tag=beer
# /products?collection_id=1234&tags[]=beer&tags[]=this

# Left bar
# - Lists all of the collections
# -- Lists all of the tags under that (and maybe sub collections)

# When a tag is clicked

# var active_tags = [];

# $(".ff-tag").on("click", function(){
# 	var tag = $(this).data('tag');

# 	# <a href="#" class= "ff-tag" data-tag="beer">Beer</a>
# 	if(active_tags.indexOf(tag)){
# 		# this is already being searched so.... remove it
# 		# lookup javascript remove value from array
# 		active_tags.pop(tag);
# 	} else {
# 		# This isn't being seached yet, add it!
# 		active_tags.push(tag);
# 	}

# 	# Go get the new tags
# 	getTags();
# });

# function getTags(){
# 	$.get("/products", {
# 		collection_id: "whatever the collection id is",
# 		tags: active_tags
# 	}, function(){
# 		# Populate the right side with this shiny new content
# 	})
# }