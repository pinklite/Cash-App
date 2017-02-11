json.extract! borrower, :id, :name, :memo, :price, :created_at, :updated_at
json.url borrower_url(borrower, format: :json)