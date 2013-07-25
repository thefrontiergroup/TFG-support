require "spec_helper"

describe TFG::Support::DeepHashAccessor do
  let(:hash) { Hash.new }

  subject(:accessor) { TFG::Support::DeepHashAccessor.new(hash) }

  describe "#[]" do
    context "with a single argument" do
      subject(:call) { accessor[:foo] }

      context "when the key is present" do
        let(:hash) { {foo: :bar} }

        specify { expect(call).to eq :bar }
      end

      context "when the key is not present" do
        specify { expect(call).to be_nil }
      end
    end

    context "with multiple arguments" do
      subject(:call) { accessor[:foo, :bar, :baz] }

      context "when key chain is present" do
        let(:hash) { {foo: {bar: {baz: :qux}}} }

        specify { expect(call).to eq :qux }
      end

      context "when key chain is not present" do
        let(:hash) { {foo: {baz: {bar: :qux}}} }

        specify { expect(call).to be_nil }
      end
    end
  end

  describe "#[]=" do
    context "with a single argument" do
      subject(:call) { accessor[:foo] = :bar }

      context "when the key is present" do
        specify { call; expect(hash[:foo]).to eq :bar }
      end
    end

    context "with multiple arguments" do
      subject(:call) { accessor[:foo, :bar, :baz] = :qux }

      context "when key chain is present" do
        let(:hash) { {foo: {bar: {}}} }

        specify { call; expect(hash[:foo][:bar][:baz]).to eq :qux }
      end

      context "when key chain is not present" do
        specify { call; expect(hash[:foo][:bar][:baz]).to eq :qux }
      end
    end
  end
end