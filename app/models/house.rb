class House < ActiveRecord::Base
  has_many :joins
  has_many :rewards, through: :joins
  validates :house_name, presence: true, uniqueness: true
end
