module PolicyGenerator
  module Generators
    class ScaffoldGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)
      puts "PolicyGenerator::Generators::ScaffoldGenerator"

      def create_policy
        template "policy.rb", File.join("app/policies", class_path, "#{file_name}_policy.rb")
      end

      hook_for :test_framework, as: :policy
    end
  end
end
