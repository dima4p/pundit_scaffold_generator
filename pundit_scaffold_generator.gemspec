# frozen_string_literal: true

require_relative "lib/pundit_scaffold_generator/version"

Gem::Specification.new do |spec|
  spec.name = "pundit_scaffold_generator"
  spec.version = PunditScaffoldGenerator::VERSION
  spec.authors = ["Dmitry Kulikov"]
  spec.email = ["dima@koulikoff.de"]

  spec.summary = "the code for /policies and /spec/policies if pundit is used"
  spec.description = <<-DESCRIPTION
When your project uses pundit gem for authorization this gem generates
the code for /policies and /spec/policies
  DESCRIPTION
  spec.homepage = "https://github.com/dima4p/pundit_scaffold_generator"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  #spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
