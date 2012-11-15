require 'e'

class App < E

  map '/'

  layout :master
  format :html
  #
  setup '.html' do
    engine :ERB
  end

  def index
    render
    # "<html><head></head><body><h1>Dark Roast</h1><p>Classy Links</p></body></html>"
  end
end
