require 'sinatra/base'
require 'haml'
require 'sass'

module App
  
  class AppBase < Sinatra::Base
    set :static, true
    set :public, 'public/'
  end
  
  class Main < AppBase
    set :views, 'templates/main'
    
    get "/?" do
      haml :index
    end

    get "/stylesheets/default.css" do
      content_type "text/css"
      sass :"default"
    end

  end
  
end
  
  
