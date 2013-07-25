require "spec_helper"

describe String do
  describe "#to_boolean" do
    subject(:to_boolean) { string.to_boolean }

    true_cases = %w(true TRUE True t T yes YES Yes y Y 1)
    false_cases = %w(false FALSE False f F no NO No n N 0)

    true_cases.each do |string|
      context "for #{string}" do
        let(:string) { string }

        specify { expect(to_boolean).to be_true }
      end
    end

    false_cases.each do |string|
      context "for #{string}" do
        let(:string) { string }

        specify { expect(to_boolean).to be_false }
      end
    end

    context "for other values" do
      let(:string) { "bob" }

      specify { expect{to_boolean}.to raise_error(ArgumentError) }
    end
  end
end