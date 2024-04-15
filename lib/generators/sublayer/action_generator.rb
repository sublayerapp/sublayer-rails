module Sublayer
  # Scaffold Generator for Sublayer Actions
  class ActionGenerator < ::Rails::Generators::NamedBase
    source_root File.expand_path("templates", __dir__)

    def create_view
      @path = File.join("lib/sublayer/actions", class_path, "#{file_name}_action.rb")
      template "action.rb.erb", @path
    end
  end
end
