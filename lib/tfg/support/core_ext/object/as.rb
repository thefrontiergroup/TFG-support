# The method #as allows you to take an object and use it in a block. If
# you return a non-nil value, #as will return that value, otherwise the
# original object is returned.
#
# This is particularly useful with super:
#
# def overridden_method
#   super.as |value|
#     if value.is_a? String
#       Array.wrap(value)
#     end
#   end
# end
#
# Which is equivalent to:
#
# def overridden_method
#   _overridden_method = super
#
#   if _overridden_method.is_a? String
#     Array.wrap(_overridden_method)
#   else
#     _overridden_method
#   end
# end

class Object
  def as
    result = yield(self)
    result.nil? ? self : result
  end
end