require "modern-ui-sass/version"

module ModernUI

  class FrameworkNotFound < StandartError; end

  def self.load!
    if compass? && asset_pipeline?
      register_compass_extension
      register_rails_engine
    elsif compass?
      # Only require compass extension if a standalone project
      require 'modern-ui-sass/compass_functions'
      register_compass_extension
    elsif asset_pipeline?
      require "sass-rails"
      register_rails_engine
      require 'modern-ui-sass/rails_functions'
    else
      raise ModernUI::FrameworkNotFound, "modern-ui-sass requires either Rails > 3.1 or Compass, neither of which are loaded"
    end
  end

  private

  def self.asset_pipeline?
    defined?(::Rails) && ::Rails.version >= '3.1.0'
  end

  def self.compass?
    defined?(::Compass)
  end

  def self.register_compass_extension
    base = File.join(File.dirname(__FILE__), '..')
    styles = File.join(base, 'vendor', 'assets', 'stylesheets')
    templates = File.join(base, 'templates')
    ::Compass::Frameworks.register('modern-ui', :stylesheets_directory => styles, :templates_directory => templates)
  end

  def self.register_rails_engine
    require 'modern-ui-sass/engine'
  end

end

ModernUI.load!
