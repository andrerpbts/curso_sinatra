class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  get '/' do
    'HELLO WORLD'
  end
end
