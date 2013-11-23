class Counter < ActiveRecord::Base
	has_many :portfolio_counters
  	has_many :portfolios, :through => :portfolio_counters
end