class Sprint < ActiveRecord::Base
  attr_accessible :exp_end_date, :start_date, :summary, :title, :in_progress
  scope :ongoing, -> {where(in_progress: true)}

  def to_param
    "#{id} #{title}".parameterize
  end
end
