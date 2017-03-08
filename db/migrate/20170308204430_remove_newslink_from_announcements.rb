class RemoveNewslinkFromAnnouncements < ActiveRecord::Migration[5.0]
  def change
    remove_column :announcements, :newslink, :string
  end
end
