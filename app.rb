require 'sinatra'

class HelloWorldApp < Sinatra::Base
  get '/' do
    'HELLO WORLD'
  end
end
