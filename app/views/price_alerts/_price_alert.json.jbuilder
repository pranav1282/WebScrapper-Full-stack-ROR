json.extract! price_alert, :id, :url, :selector, :trigger_amount, :user_id, :created_at, :updated_at
json.url price_alert_url(price_alert, format: :json)
