class Token < ActiveRecord::Base
  before_save :generate_token

  private

  def generate_token
    self.token = SecureRandom.hex
  end
end
