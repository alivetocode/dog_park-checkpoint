require 'spec_helper'

describe Dog do

  it { should belong_to(:owner) }

  it { should have_valid(:name).when("Fido", "rover") }
  it { should_not have_valid(:name).when("", nil) }

  it { should have_valid(:owner).when(Owner.new)}
  it { should_not have_valid(:owner).when(nil) }

end
