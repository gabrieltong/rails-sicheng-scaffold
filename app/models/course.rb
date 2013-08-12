class Course < ActiveRecord::Base
  attr_accessible :capacity, :cycle, :duration, :form, :frequency, :join_class, :kind, :make_value, :mic, :projector, :remark, :section_size, :sound, :title, :video_makeup
end
