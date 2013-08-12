class SchoolsPeople < ActiveRecord::Migration
  def up
    create_table :schools_people do |t|
      t.integer :school_id
      t.integer :person_id
    end

    add_index :schools_people,:school_id
    add_index :schools_people,:person_id
  end

  def down
    drop_table :schools_people
  end
end
