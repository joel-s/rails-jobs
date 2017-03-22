class Job < ActiveRecord::Base
  enum category: [:no_category, :cleaning, :painting, :yardwork]
  enum location: [:no_location, :boston, :cambridge, :somerville]
  enum status: [:created, :assigned, :in_progress, :completed]
end
