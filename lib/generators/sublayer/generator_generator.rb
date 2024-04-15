# frozen_string_literal: true

module Sublayer
  # Scaffold Generator for Sublayer Generators
  class GeneratorGenerator < ::Rails::Generators::NamedBase
    source_root File.expand_path("templates", __dir__)

    def create_view
      @path = File.join("lib/sublayer/generators", class_path, "#{file_name}_generator.rb")
      template "generator.rb.erb", @path
    end
  end
end
