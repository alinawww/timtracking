class TimeEntry < ApplicationRecord
  belongs_to :project

  validates :hours, numericality: true

  validates :minutes, presence: true
  
end
