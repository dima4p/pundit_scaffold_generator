require 'rails/generators/rails/scaffold/scaffold_generator'

class Rails::Generators::ScaffoldGenerator
  class_option :policy_generator, desc: 'Generates the pundit policy',
      default: 'policy_generator'
  hook_for :policy_generator, required: true
end
