class Genre < ApplicationRecord

  has_many :tasks

  validates :name, uniqueness: true

end
