class Hash
  def map_values
    Hash.new.tap do |result|
      self.each do |key, value|
        result[key] = yield(value)
      end
    end
  end
end