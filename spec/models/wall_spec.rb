require 'spec_helper'

describe Wall do
  it { should belong_to :gym }
  it { should have_many :boulder_routes }
end