require_relative 'config/environment'

use Rack::TokenAuth do |token, options, env|
  token == "secret"
end

run ApplicationController
