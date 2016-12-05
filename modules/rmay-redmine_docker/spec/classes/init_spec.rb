require 'spec_helper'
describe 'redmine_docker' do

  context 'with defaults for all parameters' do
    it { should contain_class('redmine_docker') }
  end
end
