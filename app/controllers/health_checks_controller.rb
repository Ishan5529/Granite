# frozen_string_literal: true

class HealthChecksController < ApplicationController
  skip_before_action :authenticate_user_using_x_auth_token

  def index
    render json: { status: "ok", message: "Application is alive" }, status: :ok
  end
end
