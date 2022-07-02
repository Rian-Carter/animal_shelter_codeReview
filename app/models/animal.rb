class Animal < ApplicationRecord
  validates :species, :breed, :age, :name, :gender, presence: :true
end