json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :enrollment, :cpf, :phone
  json.url employee_url(employee, format: :json)
end
