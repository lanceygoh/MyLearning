class AddUserIdtoPortfolio < ActiveRecord::Migration
  def change
  	add_column: Portfolio, :userID, :integer
  end
end
