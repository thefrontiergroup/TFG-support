require 'spec_helper'

describe Hash do

  subject(:hash) do
    {
        shallow_key: :single_value,
        deep_key:
            {
                nested_key: :nested_value
            }
    }
  end

  describe "#deep[]" do
    describe "with single argument" do

      subject(:index) { hash.deep[:shallow_key] }

      it "returns the value of the key" do
        should eq :single_value
      end
    end

    describe "with multiple arguments" do

      subject(:index) { hash.deep[:deep_key, :nested_key] }

      it "returns the value of the key for the nested hash" do
        should eq :nested_value
      end
    end

    describe "when a key is not present" do

      subject(:index) { hash.deep[:deep_key, :missing_key, :nested_key] }

      it "returns nil" do
        should be nil
      end
    end
  end

  describe "#deep[]=" do
    before :each do
      deep_set
    end

    describe "with single argument" do
      subject(:deep_set) { hash.deep[:shallow_key]= :new_value }

      it "sets the key of the original hash" do
        hash[:shallow_key].should eq :new_value
      end
    end

    describe "with multiple arguments" do

      subject(:deep_set) { hash.deep[:deep_key, :nested_key]= :new_value }

      it "sets the key of the nested hash" do
        hash[:deep_key][:nested_key].should eq :new_value
      end
    end

    describe "when a key is not present" do

      subject(:deep_set) { hash.deep[:deep_key, :missing_key, :nested_key]= :new_value }

      it "creates a new hash for the missing key" do
        hash[:deep_key][:missing_key][:nested_key].should eq :new_value
      end
    end
  end
end

