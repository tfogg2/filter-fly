class SupportController < ApplicationController

	def index
		@collections = ShopifyAPI::Collection.find(:all, :params => {:limit => 10})
	end







end