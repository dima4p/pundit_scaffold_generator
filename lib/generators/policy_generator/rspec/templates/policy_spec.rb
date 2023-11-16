require '<%= File.exist?('spec/rails_helper.rb') ? 'rails_helper' : 'spec_helper' %>'

RSpec.describe <%= class_name %>Policy, type: :policy do
  subject(:policy) { described_class }
  let(:allow) { permit user, <%= file_name %> }
<% if Rails.application.config.generators.options[:rails][:fixture_replacement] == :factory_bot -%>
  let(:user) { create :user }
  let(:<%= file_name %>) {create :<%= file_name %>}
<% else -%>
  let(:user) { User.new }
  let(:<%= file_name %>) {<%= class_name %>.new }
<% end -%>

  permissions :index? do
    it 'permits' do
      is_expected.to allow
    end
  end

  permissions :show? do
    it 'permits' do
      is_expected.to allow
    end
  end

  permissions :create? do
    it 'permits' do
      is_expected.to allow
    end
  end

  permissions :update? do
    it 'permits' do
      is_expected.to allow
    end
  end

  permissions :destroy? do
    it 'permits' do
      is_expected.to allow
    end
  end

  context "::scope" do
    subject(:policy_scope) do
      described_class::Scope.new(user, <%= class_name %>).resolve
    end

    it 'shows all records' do
      is_expected.to eq <%= class_name %>.all
    end
  end
end
