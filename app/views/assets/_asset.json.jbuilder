json.extract! asset, :id, :symbol, :user_id, :cost_per, :amount_owned, :created_at, :updated_at
json.url asset_url(asset, format: :json)
