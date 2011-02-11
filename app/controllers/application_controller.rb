class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter {|contr| Authorization.current_user = contr.current_user}
end
