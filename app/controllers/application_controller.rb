# frozen_string_literal: true

class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from StandardError, with: :standard_error

  before_action :authenticate_user!

  def after_sign_out_path_for(_resource_or_scope)
    new_user_session_path
  end

  private

  def record_not_found
    render file: "#{Rails.root}/public/404.html", status: :not_found
  end

  def standard_error(exception)
    logger.error(exception.message)
    # Render a generic error page or JSON response
    render file: "#{Rails.root}/public/500.html", status: :internal_server_error
  end
end
