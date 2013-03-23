class Fare < ActiveRecord::Base
  attr_accessible :amount, :end_bus_stop, :end_time, :operator, :route, :start_bus_stop, :start_time

  validates :amount, :route, :operator, :start_bus_stop, presence: true
end
