require "spec_helper"

describe TFG::Support::Sequence do
  context 'created with a generator' do
    subject(:sequence) { TFG::Support::Sequence.new(first, generator) }

    describe "#next" do
      let(:first) { Object.new }
      let(:second) { Object.new }
      let(:generator) { double("generator", call: second) }

      subject(:next_call) { sequence.next }

      context "on the first call to next" do
        specify { should eq first }
      end

      context "on subsequent calls to next" do
        before { sequence.next }

        specify { should eq second }
      end
    end
  end

  context 'created with a block' do
    subject(:sequence) { TFG::Support::Sequence.new(1) { |arg| arg * 2 } }

    describe '#next' do
      subject(:next_call) { sequence.next }

      context "on the first call to next" do
        specify { should eq 1 }
      end

      context "on the 2nd call to next" do
        before { sequence.next }
        specify { should eq 2 }
      end

      context "on the 3rd call to next" do
        before { sequence.next; sequence.next }
        specify { should eq 4 }
      end

    end

  end

end