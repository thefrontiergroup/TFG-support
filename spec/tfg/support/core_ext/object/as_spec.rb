require "spec_helper"

describe Object do
  subject(:object) { Object.new }

  describe "#as" do
    let(:as) { object.as(&block) }

    specify { expect{|block| object.as(&block) }.to yield_with_args(object) }

    context "when the block returns nil" do
      let(:block) { Proc.new {|arg| nil } }

      specify { expect(as).to eq object }
    end

    context "when the block does not return nil" do
      let(:block_return) { Object.new }
      let(:block) { Proc.new {|arg| block_return } }

      specify { expect(as).to eq block_return }
    end
  end
end