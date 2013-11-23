class AddUserIdToPortfolio < ActiveRecord::Migration
  def change
    add_column :portfolios, :userid, :integer
  end
end
