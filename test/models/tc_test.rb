require "test_helper"

describe Tc do
  let(:tc) { Tc.new }

  it "must be valid" do
    value(tc).must_be :valid?
  end
end
