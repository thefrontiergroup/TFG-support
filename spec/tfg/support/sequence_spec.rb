require "spec_helper"

describe TFG::Support::Sequence do
  subject(:sequence) { TFG::Support::Sequence.new(first, generator) }

  describe "#next" do
    let(:first) { Object.new }
    let(:second) { Object.new }
    let(:generator) { double("generator", call: second) }

    subject(:call) { sequence.next }

    context "on the first call" do
      specify { expect(call).to eq first }
      specify { call; expect(generator).to_not have_received(:call) }
    end

    context "on susequent calls" do
      before { sequence.next }

      specify { expect(call).to eq second }
      specify { call; expect(generator).to have_received(:call).with(first) }
    end
  end
end 