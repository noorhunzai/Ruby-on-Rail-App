class User < ApplicationRecord
  attribute :name
  has_many :posts
end
