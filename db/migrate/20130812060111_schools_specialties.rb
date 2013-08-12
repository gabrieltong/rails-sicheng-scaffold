class SchoolsSpecialties < ActiveRecord::Migration
  def up
    create_table :schools_specialties do |t|
      t.integer :specialty_id
      t.integer :person_id
    end

    add_index :schools_specialties,:specialty_id
    add_index :schools_specialties,:person_id
  end

  def down
    drop_table :schools_specialties
  end
end
