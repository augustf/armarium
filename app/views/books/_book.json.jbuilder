json.extract! book, :id, :title, :author, :year, :type, :publisher, :subject, :isbn, :condition, :collection_item_id, :created_at, :updated_at
json.url book_url(book, format: :json)
