class ApplicationController < ActionController::Base
  protect_from_forgery


  Dir["lib/**/*.rb"].each do |path|
    require_dependency path
  end

end
