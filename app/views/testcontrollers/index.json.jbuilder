json.array!(@testcontrollers) do |testcontroller|
  json.extract! testcontroller, :id, :a, :b, :c
  json.url testcontroller_url(testcontroller, format: :json)
end
