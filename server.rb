require 'bundler'
Bundler.require

set :port, 8888

set :views, File.dirname(__FILE__) + '/assets'

get '/' do
  html :index
end


get "/js/application.js" do
  coffee :application
end

get "/css/style.css" do
  scss :style
end

private
def html(view)
  File.read(File.join('public', "#{view.to_s}.html"))
end
