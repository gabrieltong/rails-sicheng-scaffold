class Classroom < ActiveRecord::Base
  attr_accessible :capacity, :mic, :projector, :sound, :title
end
