require "spec_helper"

describe Hash do
  subject(:hash) { Hash.new }

  describe "#deep" do
    subject(:deep) { hash.deep }

    specify { expect(deep).to be_a TFG::Support::DeepHashAccessor }
    specify { expect(deep.hash).to eq hash }
  end
end