json.extract! coin, :id, :year, :mintmark, :mintage, :condition, :certification, :certification_number, :distribution, :defects, :coin_type_id, :collection_item_id, :created_at, :updated_at
json.url coin_url(coin, format: :json)
