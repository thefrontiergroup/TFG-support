require 'spec_helper'

describe String do

  describe "#to_boolean" do
    subject(:to_boolean) { str.to_boolean }

    true_cases = %w(true trUe t yes y 1)
    false_cases = %w(false faLse f no n 0)

    true_cases.each do |str|
      context "when #{str}" do
        let(:str) { str }
        it("returns true") { should eq true }
      end
    end

    false_cases.each do |str|
      context "when #{str}" do
        let(:str) { str }
        it("returns false") { should eq false }
      end
    end

    context "when something else" do
      let(:str) { "bob" }
      it("raises an argument error") { expect { to_boolean }.to raise_error(ArgumentError) }
    end
  end

end
