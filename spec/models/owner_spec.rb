require 'spec_helper'

describe Owner do
  it { it should have_many(:dogs) }

  it { should have_valid(:first_name).when("Scott", "Suzanne") }
  it { should_not have_valid(:first_name).when("", nil) }

  it { should have_valid(:last_name).when("Harman", "Brown") }
  it { should_not have_valid(:last_name).when("", nil) }

  it { should have_valid(:email).when("scott@example.com", "Suzanne@gmail.com") }
  it { should_not have_valid(:email).when("scott@examplecom", "scottexample.com") }

end
