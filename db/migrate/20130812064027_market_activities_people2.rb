class MarketActivitiesPeople2 < ActiveRecord::Migration
  def up
    create_table :market_activities_people do |t|
      t.integer :market_activity_id
      t.integer :person_id
    end

    add_index :market_activities_people,:market_activity_id
    add_index :market_activities_people,:person_id    
  end

  def down
    drop_table :market_activities_people
  end
end
