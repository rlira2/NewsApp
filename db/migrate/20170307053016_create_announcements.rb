class CreateAnnouncements < ActiveRecord::Migration[5.0]
  def change
    create_table :announcements do |t|
      t.datetime :publicationDate
      t.string :headline
      t.string :subhead
      t.text :body
      t.string :newslink

      t.timestamps
    end
  end
end
