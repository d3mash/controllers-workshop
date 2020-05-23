# frozen_string_literal: true

class Web::ApplicationController < ApplicationController
  include Flash

  before_action :current_user

  def current_user
    User.first
  end
end
