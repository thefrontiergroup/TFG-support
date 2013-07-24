require "spec_helper"

describe Hash do
  subject(:hash) { {a: 1, b: 2} }

  describe "#with_indifferent_equality" do
    subject(:with_indifferent_equality) { hash.with_indifferent_equality }

    specify { expect(with_indifferent_equality).to_not equal hash }
  end

  describe "#==" do
    subject(:call) { hash == other }

    context "with normal hashes" do
      context "with different keys" do
        let(:other) { {"a" => 1, "b" => 2} }

        specify { expect(call).to be_false }
      end

      context "with the same keys" do
        let(:other) { hash.dup }

        specify { expect(call).to be_true }
      end
    end

    context "with two indifferent hashes" do
      let(:hash) { {a: 1, b: 2}.with_indifferent_equality }

      context "with different keys" do
        let(:other) { {"a" => 1, "b" => 2}.with_indifferent_equality }

        specify { expect(call).to be_true }
      end

      context "with the same keys" do
        let(:other) { {a: 1, b: 2}.with_indifferent_equality }

        specify { expect(call).to be_true }
      end
    end

    context "with one indifferent hash" do
      context "with different keys" do
        let(:other) { {"a" => 1, "b" => 2}.with_indifferent_equality }

        specify { expect(call).to be_true }
      end

      context "with the same keys" do
        let(:other) { {a: 1, b: 2}.with_indifferent_equality }

        specify { expect(call).to be_true }
      end
    end
  end
end