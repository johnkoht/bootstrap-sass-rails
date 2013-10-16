require "bootstrap_sass_rails/version"

unless defined?(Sass)
  require 'sass'
end

module BootstrapSassRails
  if defined?(Rails) && defined?(Rails::Engine)
    require "bootstrap_sass_rails/engine"
  else
    Sass.load_paths << File.expand_path("../../app/assets/stylesheets/bootstrap", __FILE__)
  end
end