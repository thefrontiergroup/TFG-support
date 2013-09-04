class Numeric
  def clamp(range)
    if self < range.min
      range.min
    elsif self > range.max
      range.max
    else
      self
    end
  end
end
