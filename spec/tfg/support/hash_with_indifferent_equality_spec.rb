require "spec_helper"

describe TFG::Support::HashWithIndifferentEquality do
  let(:hash) { Hash.new }

  subject(:hash_with_indifferent_equality) { TFG::Support::HashWithIndifferentEquality.new(hash) }

  describe "#is_a?" do
    subject(:is_a?) { hash_with_indifferent_equality.is_a?(klass) }

    context "with TFG::Support::HashWithIndifferentEquality" do
      let(:klass) { TFG::Support::HashWithIndifferentEquality }

      specify { expect(is_a?).to be_true }
    end

    context "with Hash" do
      let(:klass) { TFG::Support::HashWithIndifferentEquality }

      specify { expect(is_a?).to be_true }
    end
  end
end