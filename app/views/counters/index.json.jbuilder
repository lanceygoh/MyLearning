json.array!(@counters) do |counter|
  json.extract! counter, :fullname, :currency, :listedBoard, :sgxcode
  json.url counter_url(counter, format: :json)
end
