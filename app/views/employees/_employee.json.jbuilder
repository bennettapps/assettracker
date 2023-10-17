json.extract! employee, :id, :title, :created_at, :updated_at
json.url employee_url(employee, format: :json)
