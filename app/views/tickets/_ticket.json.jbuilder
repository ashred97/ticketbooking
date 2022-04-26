json.extract! ticket, :id, :name, :address, :birthday, :email, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
