class Supply < ApplicationRecord

  validates :name, presence: true, length: {in: 1..50}
  validates :department, presence: true, inclusion: { :in => ["sleeping", "hyrdation", "shelters"]}
  validates :price, presence: true, numericality: { greater_than: 0 }, numericality: { less_than: 100000 }
  
end

