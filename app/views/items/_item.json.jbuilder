json.extract! item, :id, :description, :category_id, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)