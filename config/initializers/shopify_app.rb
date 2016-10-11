ShopifyApp.configure do |config|

  config.api_key = "fa263eb3af1d0c9fa0b9bfd797a3a613"
  config.secret = "0ca0c3ddffe2b527ec59c49b47234e1b"
  config.scope = "write_products, read_products"
  config.embedded_app = true

  config.webhooks = [
  	{topic: 'app/uninstall', address: 'http://localhost:3000/webhooks/app_uninstall', format: 'json'},
    {topic: 'collections/delete', address: 'http://localhost:3000/webhooks/collections_delete', format: 'json'},
    {topic: 'collections/update', address: 'http://localhost:3000/webhooks/collections_update', format: 'json'},
    {topic: 'collections/create', address: 'http://localhost:3000/webhooks/collections_create', format: 'json'},
  ]
end
