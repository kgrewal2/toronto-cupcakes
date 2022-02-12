json.extract! cupcake, :id, :title, :price, :description, :photo_url, :flavor, :created_at, :updated_at
json.url cupcake_url(cupcake, format: :json)
