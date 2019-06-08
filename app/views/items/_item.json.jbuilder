json.extract! item, :id, :inventory_id, :name, :damage, :bonus, :description, :created_at, :updated_at
json.url item_url(item, format: :json)
