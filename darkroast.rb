require 'e'

class App < E

  map '/'

  layout :layout

  def index
    render
  end
end
