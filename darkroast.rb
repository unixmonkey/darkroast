require 'e'
require 'httparty'

class App < E

  map '/'

  layout :layout

  def index
    @posts = HTTParty.get('http://www.reddit.com/r/programming.json').
      parsed_response['data']['children']
    render
  end
end
