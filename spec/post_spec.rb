require 'spec_helper'

describe Post do
  it { should validate_presence_of :link }
  it { should validate_uniqueness_of :link }
  it { should have_many :votes }
end
