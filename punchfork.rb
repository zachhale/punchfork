require 'httparty'

class Punchfork
  include HTTParty

  base_uri 'http://api.punchfork.com'
  format :json

  def initialize
    @auth = { :key => ENV['PUNCHFORK_KEY'] }
    self.class.default_params @auth
  end

  def recipes(options = {})
    self.class.get('/recipes', options)
  end
end
