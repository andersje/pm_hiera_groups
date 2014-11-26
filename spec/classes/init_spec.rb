require 'spec_helper'
describe 'pm_hiera_groups' do

  context 'with defaults for all parameters' do
    it { should contain_class('pm_hiera_groups') }
  end
end
