json.extract! collection_item, :id, :code, :location, :notes, :created_at, :updated_at
json.url collection_item_url(collection_item, format: :json)
