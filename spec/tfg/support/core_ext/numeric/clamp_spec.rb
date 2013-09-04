require "spec_helper"

describe Fixnum do
  describe "#clamp" do

    subject(:clamp) { numeric.clamp(min..max) }

    context "when the number is within the range" do
      let(:numeric) { 5.5 }
      let(:min) { 0 }
      let(:max) { 10 }

      it { should be numeric }
    end

    context "when the number less than the range minimum" do
      let(:numeric) { -5 }
      let(:min) { 0 }
      let(:max) { 10 }

      it { should be min }
    end

    context "when the number greater than the range maximum" do
      let(:numeric) { 12 }
      let(:min) { 0 }
      let(:max) { 10 }

      it { should be max }
    end
  end
end
