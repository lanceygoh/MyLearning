require 'httparty'
class Facebook
  include HTTParty
  base_uri 'https://graph.facebook.com/'
  # default_params :output => 'json'
  format :json

  def self.object(id)
    get "/14063940"
  end
end
