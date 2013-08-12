class Person < ActiveRecord::Base
  attr_accessible :alumnus, :exam_4, :exam_6, :exam_qimo, :exam_toefl, :finished, :guide, :guide_vip, :home_101, :home_51, :home_summer, :logic, :phone, :qq, :state, :username

  has_and_belongs_to_many :schools,:uniq=>true
  has_and_belongs_to_many :departments,:uniq=>true
  has_and_belongs_to_many :specialties,:uniq=>true
  has_and_belongs_to_many :market_activities,:uniq=>true
end
