require 'spec_helper'

describe Gym do
  it { should have_many :walls }
  it { should have_many :boulder_routes }
end