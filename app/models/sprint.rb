class Sprint < ActiveRecord::Base
  attr_accessible :exp_end_date, :start_date, :summary, :title, :in_progress
end
