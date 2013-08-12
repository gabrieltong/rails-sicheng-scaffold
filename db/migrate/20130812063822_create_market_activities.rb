class CreateMarketActivities < ActiveRecord::Migration
  def change
    create_table :market_activities do |t|
      t.string :title

      t.timestamps
    end
  end
end
