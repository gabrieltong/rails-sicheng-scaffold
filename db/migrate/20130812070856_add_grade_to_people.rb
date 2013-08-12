class AddGradeToPeople < ActiveRecord::Migration
  def change
    add_column :people,:grade,:string
    add_column :people,:signup_openclass,:boolean
    add_column :people,:openclass_method,:string
  end
end
