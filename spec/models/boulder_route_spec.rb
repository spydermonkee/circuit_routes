require 'spec_helper'

describe BoulderRoute do
  it { should belong_to :gym }
  it { should belong_to :wall }
end