class Rename < ActiveRecord::Migration
  def up
    rename_table :schools_people,:people_schools
  end

  def down
    rename_table :people_schools,:schools_people
  end
end
