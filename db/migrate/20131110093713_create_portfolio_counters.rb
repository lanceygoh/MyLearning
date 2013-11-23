class CreatePortfolioCounters < ActiveRecord::Migration
  def change
    create_table :portfolio_counters do |t|
      t.integer :pid
      t.integer :cid
      t.decimal :price
      t.date :purchasedate
      t.integer :size

      t.timestamps
    end
  end
end
