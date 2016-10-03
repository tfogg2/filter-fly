ShopifyApp.configure do |config|
  config.api_key = "fa263eb3af1d0c9fa0b9bfd797a3a613"
  config.secret = "0ca0c3ddffe2b527ec59c49b47234e1b"
  config.scope = "read_products, write_products"
  config.redirect_uri = "http://localhoast:3000/auth/shopify/callback"
  config.embedded_app = true
=begin
  config.webhooks = [
  		{topic: 'collections/create', address: 'http://filter-fly.herokuapp.com/webhooks/collections_create', format: 'json'}
  	]
  	[
  		{topic: 'collections/delete', address: 'http://filter-fly.herokuapp.com/webhooks/collections_delete', format: 'json'}
  	]
  	[
  		{topic: 'collections/update', address: 'http://filter-fly.herokuapp.com/webhooks/collections_update', format: 'json'}
  	]
=end
end
