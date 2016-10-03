Rails.application.config.middleware.use OmniAuth::Builder do
  provider :shopify,
    ShopifyApp.configuration.api_key,
    ShopifyApp.configuration.secret,
    :scope => ShopifyApp.configuration.scope,
=begin
    :redirect_uri => "https://filter-fly.herokuapp.com/auth/shopify/callback",
=end
    :setup => lambda {|env|
       params = Rack::Utils.parse_query(env['QUERY_STRING'])
       site_url = "https://#{params['shop']}"
       env['omniauth.strategy'].options[:client_options][:site] = site_url

    }

end
