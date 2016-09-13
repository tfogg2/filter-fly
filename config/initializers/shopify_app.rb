ShopifyApp.configure do |config|
  config.api_key = "fa263eb3af1d0c9fa0b9bfd797a3a613"
  config.secret = "0ca0c3ddffe2b527ec59c49b47234e1b"
  config.redirect_uri = "https://filter-fly.herokuapp.com/auth/shopify/callback"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
end
