class WaitTime < ActiveRecord::Base
belongs_to :restaurant
validates :time, presence: true
end
