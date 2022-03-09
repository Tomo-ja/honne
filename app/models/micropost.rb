class Micropost < ApplicationRecord
  belongs_to :user
  has_many :comments, foreign_key: "micropost_id"
end
