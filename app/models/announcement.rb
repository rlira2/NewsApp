class Announcement < ApplicationRecord
  before_create :set_time_creation
  default_scope {order(publicationDate:'DESC')}
  def set_time_creation
    self.publicationDate = Time.now
  end
end
