require './darkroast'

app = EApp.new do
  mount App
  assets_map :static, true
end

run app