require 'spec_helper'
describe 'drupal_docker' do

  context 'with defaults for all parameters' do
    it { should contain_class('drupal_docker') }
  end
end
