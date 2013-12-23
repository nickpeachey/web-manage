class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :ongoing_sprints

  #Dir['lib/**/*.rb'].each do |path|
  #  require_dependency path
  #end

  def ongoing_sprints
    Sprint.ongoing
  end

end
