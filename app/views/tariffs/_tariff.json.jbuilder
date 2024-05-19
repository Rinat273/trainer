json.extract! tariff, :id, :title, :price, :active_tariff_id, :created_at, :updated_at
json.url tariff_url(tariff, format: :json)
