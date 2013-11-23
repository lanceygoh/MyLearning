class Portfolio < ActiveRecord::Base
	#belongs_to :user, class_name: "User", foreign_key: "userid"


	has_many :portfolio_counter
	has_many :counter, :through => :portfolio_counter
end
