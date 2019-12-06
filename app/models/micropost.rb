class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorites
  has_many :users, through: :favorites
end
