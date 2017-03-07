json.extract! announcement, :id, :publicationDate, :headline, :subhead, :body, :newslink, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)
