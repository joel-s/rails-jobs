class Job < ActiveRecord::Base
  enum category: [:no_category, :cleaning, :painting, :yardwork]
  def self.category_list
    list = Job.categories.map { |e| [e.first, e.first.humanize] }
    list[0][1] = "Select"
    return list
  end

  enum location: [:no_location, :boston, :cambridge, :somerville]
  def self.location_list
    list = Job.locations.map { |e| [e.first, e.first.humanize] }
    list[0][1] = "Select"
    return list
  end

  enum statusval: [:no_status, :created, :assigned, :in_progress, :completed]
  def self.statusval_list
    list = Job.statusvals.map { |e| [e.first, e.first.humanize] }
    list[0][1] = "Select"
    return list
  end
end
