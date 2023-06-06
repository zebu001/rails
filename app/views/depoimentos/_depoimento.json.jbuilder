json.extract! depoimento, :id, :descricao, :created_at, :updated_at
json.url depoimento_url(depoimento, format: :json)
