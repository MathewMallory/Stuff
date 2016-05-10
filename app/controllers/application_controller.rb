class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :initialize_popular_tags

def initialize_popular_tags
  @popular_tags = Tag.all # don't worry, I know we don't want all tags! We'll come back to this later.
end
  def admin_required
    current_user.is_admin? || redirect_to('/')
  end
end
