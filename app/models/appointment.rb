class Appointment < ActiveRecord::Base
  belongs_to :schedule
  validates :schedule, :presence => true


end
