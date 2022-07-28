# frozen_string_literal: true

require 'spec_helper'

describe 'rspec' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
    end
  end
end

# describe 'rspec::example1' do
#  it 'includes git' do
#    is_expected.to contain_package('git')
#  end
# end
#
# describe 'rspec::example2' do
#  it 'includes git' do
#    is_expected.to contain_package('git')
#  end
# end
