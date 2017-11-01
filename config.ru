require_relative 'config/environment'

use Rack::TokenAuth do |token, options, env|
  Token.find_by(token: token).present?
end

run ApplicationController
