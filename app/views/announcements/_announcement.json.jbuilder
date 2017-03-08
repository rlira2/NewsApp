json.extract! announcement, :id, :publicationDate, :headline, :subhead, :body, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)
