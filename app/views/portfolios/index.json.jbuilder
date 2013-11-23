json.array!(@portfolios) do |portfolio|
  json.extract! portfolio, :name
  json.url portfolio_url(portfolio, format: :json)
end
