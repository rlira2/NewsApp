class Announcement < ApplicationRecord
  has_many :comments, dependent: :destroy
  before_create :set_time_creation
  default_scope {order(publicationDate:'DESC')}
  validates :headline, :presence => true
  validates :subhead, :presence => true
  validates :body, :presence => true
  validates_length_of :subhead, :maximum => 250, :too_long =>"the subhead is too long, maximum is 250 chars"
  def subhead_lenght
  end
  def set_time_creation
    self.publicationDate = Time.now
  end
end
