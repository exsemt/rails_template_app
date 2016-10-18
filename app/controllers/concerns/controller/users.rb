# frozen_string_literal: true
module Controller
  module Users
    extend ActiveSupport::Concern

    included do
      before_action :configure_permitted_parameters, if: :devise_controller?
      helper_method :app_user
    end

    def app_user
      user_signed_in? ? current_user : User.new(role: :guest)
    end

    protected

    def configure_permitted_parameters
      [:salutation, :name, :phone_number].each do |attr|
        devise_parameter_sanitizer.for(:sign_up) << attr
        devise_parameter_sanitizer.for(:account_update) << attr
      end
    end
  end
end
