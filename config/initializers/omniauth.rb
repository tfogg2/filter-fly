Rails.application.config.middleware.use OmniAuth::Builder do
  provider :shopify,
    ShopifyApp.configuration.api_key,
    ShopifyApp.configuration.secret,
    :scope => ShopifyApp.configuration.scope,
    :redirect_uri => ShopifyApp.configuration.redirect_uri,

    :setup => lambda {|env|
       params = Rack::Utils.parse_query(env['QUERY_STRING'])
       site_url = "http://#{params['shop']}"
       env['omniauth.strategy'].options[:client_options][:site] = site_url

    }

end
