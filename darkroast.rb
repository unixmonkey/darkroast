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
    sections = HTTParty.get("http://www.reddit.com/r/programming/comments/#{id}/.json").
      parsed_response
    @post     = sections.first['data']['children'].first['data']
    @comments = sections.last['data']['children']
    render
  end

end
