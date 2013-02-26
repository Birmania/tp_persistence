require_relative 'spec_helper'
require 'person'

describe Person do
  subject { Person.create(:last_name => "last", :first_name => "first") }

  it { should be_valid }

  it 'is invalid without a first name' do
    subject.first_name = nil
    subject.should_not be_valid
  end
  
  it 'is invalid without a last name' do
    subject.last_name = nil
    subject.should_not be_valid
  end
end
