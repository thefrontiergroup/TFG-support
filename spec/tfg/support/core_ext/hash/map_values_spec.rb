require "spec_helper"

describe Hash do
  let(:hash) { {foo: 1, bar: 2, baz: 3, qux: 4} }

  describe "#map_values" do
    subject(:map_values) { hash.map_values {|arg| arg * 2 } }

    specify { expect(map_values).to eq({foo: 2, bar: 4, baz: 6, qux: 8}) }
    specify { expect{|block| hash.map_values(&block) }.to yield_successive_args(1, 2, 3, 4) }
  end
end