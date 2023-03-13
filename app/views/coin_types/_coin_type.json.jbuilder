json.extract! coin_type, :id, :name, :denomination, :style, :composition, :first_issued, :last_issued, :created_at, :updated_at
json.url coin_type_url(coin_type, format: :json)
