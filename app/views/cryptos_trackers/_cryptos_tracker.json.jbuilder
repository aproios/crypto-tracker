json.extract! cryptos_tracker, :id, :symbol, :user_id, :cost_per, :amount_owned, :created_at, :updated_at
json.url cryptos_tracker_url(cryptos_tracker, format: :json)
