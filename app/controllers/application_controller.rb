class ApplicationController < ActionController::API
  before_action :authenticate, only: %w[create update destroy]

  private

  def authenticate
    render_unauthorized unless valid_api_key?
  end

  def valid_api_key?
    request.headers['Authorization'] == Rails.application.credentials.dig(:api_key)
  end

  def render_unauthorized
    render json: { error: 'You are not authorized to make this request' }, status: :unauthorized
  end

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: { error: exception }, status: :not_found
  end
end
