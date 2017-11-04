RailsAdmin::ApplicationHelper

  module RailsAdmin
    module ApplicationHelper
      def logout_path
        main_app.send(:sign_out_path) rescue false
      end
    end
  end

  class Clearance
    def self.sign_out_via
      :delete
    end
  end