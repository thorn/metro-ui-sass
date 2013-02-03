require "modern-ui-sass/version"

module ModernUI

  class FrameworkNotFound < StandartError; end

  def self.load!
    if asset_pipeline?
      require "sass-rails"
      register_rails_engine
    else
      raise FrameworkNotFound, "Rails > 3.1 not found"
    end
  end

  private
  def self.asset_pipeline?
    defined?(::Rails) && ::Rails.version >= '3.1.0'
  end

  def self.register_rails_engine
    require 'modern-ui-sass/engine'
  end

end

ModernUI.load!
