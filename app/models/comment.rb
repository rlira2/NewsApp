class Comment < ApplicationRecord
  belongs_to :announcement
  validates :name, :presence => true
  validates :body, :presence => true
end
