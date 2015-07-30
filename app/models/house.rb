class House < ActiveRecord::Base
  validates :house_name, presence: true, uniqueness: true
end
