class Car < ActiveRecord::Base
  validates :brand, :model, presence: true

  validates :year,
    numericality: { greater_than: 1990, lesser_than_or_equal_to: Date.today.year },
    presence: true

  validates :price, presence: true
end
