class Specialty < ActiveRecord::Base
  attr_accessible :title

  has_and_belongs_to_many :schools,:uniq=>true
  has_and_belongs_to_many :people,:uniq=>true
end
