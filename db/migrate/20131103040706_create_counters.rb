class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.string :fullname
      t.string :currency
      t.string :listedBoard
      t.string :sgxcode

      t.timestamps
    end
  end
end
