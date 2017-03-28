class Job < ActiveRecord::Base
  enum category: [:no_category, :cleaning, :painting, :yardwork]
  def self.category_list
    list = categories.map { |e| [e.first, e.first.humanize] }
    list[0][1] = "Select"
    return list
  end

  enum location: [:no_location, :boston, :cambridge, :somerville]
  def self.location_list
    list = locations.map { |e| [e.first, e.first.humanize] }
    list[0][1] = "Select"
    return list
  end

  enum statusval: [:no_status, :created, :assigned, :in_progress, :completed]
  def self.statusval_list
    list = statusvals.map { |e| [e.first, e.first.humanize] }
    list[0][1] = "Select"
    return list
  end

  validates :poster, presence: true

  validates :category, presence: true, inclusion: {
    in: categories.map { |e| e[0] } [1..-1],
    message: "%{value} is not a valid category"
  }

  validates :location, presence: true, inclusion: {
    in: locations.map { |e| e[0] } [1..-1],
    message: "%{value} is not a valid location"
  }

  validates :statusval, presence: true, inclusion: {
    in: statusvals.map { |e| e[0] } [1..-1],
    message: "%{value} is not a valid status"
  }
end
