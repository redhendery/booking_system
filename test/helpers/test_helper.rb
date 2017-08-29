ENV['RAILS_ENV'] ||= 'test'

class ActiveSupport::TestCase
  fixtures :all
  include ApplicationHelper

  def is_signed_in?
    !session[:user_id].nil?
  end
end
