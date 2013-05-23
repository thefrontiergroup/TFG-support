module TfgSupport
  class DeepHashAccessor

    def initialize(hash)
      @hash = hash
    end

    def [](*keys)
      target = @hash

      keys.each do |key|
        return nil unless target.respond_to?(:[])
        target = target[key]
      end
      target
    end

    def []=(*keys)
      value = keys.pop()
      set_key = keys.pop()

      target = @hash
      keys.each do |key|
        hash = target[key]
        if hash.nil?
          hash = {}
          target[key] = hash
        end
        target = hash
      end

      target[set_key] = value
    end
  end
end
