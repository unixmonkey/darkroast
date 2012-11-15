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

  def comments(id)
    @comments = HTTParty.get("http://www.reddit.com/r/programming/comments/#{id}.json")
    render
  end

end
