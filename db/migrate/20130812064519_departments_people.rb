class DepartmentsPeople < ActiveRecord::Migration
  def up
    create_table :departments_people do |t|
      t.integer :department_id
      t.integer :person_id
    end

    add_index :departments_people,:department_id
    add_index :departments_people,:person_id    
  end

  def down
    drop_table :departments_people
  end
end
