class Project < ApplicationRecord
  has_many :time_entries
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: {maximum: 30}
  validates :name, format: {with: /[a-zA-Z\s]/}
  validates_associated :time_entries

  def self.clean_old
    projects = Project.where("created_at < ?", 1.week.ago)

    projects.destroy_all
  end
  # byebug
end
