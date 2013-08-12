class SpecialtiesPeople < ActiveRecord::Migration
  def up
    create_table :people_specialties do |t|
      t.integer :specialty_id
      t.integer :person_id
    end

    add_index :people_specialties,:specialty_id
    add_index :people_specialties,:person_id
  end

  def down
    drop_table :people_specialties
  end
end
