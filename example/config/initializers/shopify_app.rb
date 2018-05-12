ShopifyApp.configure do |config|
  config.application_name = 'Example App'
  config.api_key = ENV['SHOPIFY_CLIENT_API_KEY']
  config.secret = ENV['SHOPIFY_CLIENT_API_SECRET']
  config.scope ='write_price_rules, read_customers, read_orders, write_products, write_script_tags'
  config.embedded_app = true
  config.session_repository = Shop
  # Set the ScriptTags for the app - enable it to modify storefront views.  ScripTag JS files hosted on GDrive for development.
  config.scripttags = [
  {event:'onload', src: 'https://shopify-example-app-rickgriff.c9users.io/scriptag/first_script_tag.js'}
  ]
end


#Gdrive scriptag URI:
#'https://drive.google.com/uc?export=download&id=1e5JTKIlTiKgS5GhIiW3Ggk7x-dLNmhsE'}
  