json.array!(@portfolio_counters) do |portfolio_counter|
  json.extract! portfolio_counter, :pid, :cid, :price, :purchasedate, :size
  json.url portfolio_counter_url(portfolio_counter, format: :json)
end
