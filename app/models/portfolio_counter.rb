class PortfolioCounter < ActiveRecord::Base
	belongs_to :portfolio , :class_name => 'portfolio'
	belongs_to :counter , :class_name => 'counter'
end
