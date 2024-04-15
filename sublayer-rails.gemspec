# frozen_string_literal: true

require_relative "lib/sublayer/rails/version"

Gem::Specification.new do |spec|
  spec.name = "sublayer-rails"
  spec.version = Sublayer::Rails::VERSION
  spec.authors = ["Andrew Kang"]
  spec.email = ["andrew.b.kang@gmail.com"]

  spec.summary = "A Sublayer adapter for rails"
  spec.description = "An model-agnostic framework for LLM AI development"
  spec.homepage = "https://docs.sublayer.com/"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["documentation_uri"] = "https://docs.sublayer.com"
  spec.metadata["source_code_uri"] = "https://github.com/sublayerapp/sublayer-rails"
  spec.metadata["changelog_uri"] = "https://github.com/sublayerapp/sublayer-rails/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 6.0.0"
  spec.add_dependency "sublayer", "~> 0.0.6"

  spec.add_development_dependency "rspec", "~> 3.12"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
