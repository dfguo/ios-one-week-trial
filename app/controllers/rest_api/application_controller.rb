class RestApi::ApplicationController < ActionController::Base
  include ApplicationHelper

  include MessageDsl::RestApi

  helper_method :render_with_layout

end
