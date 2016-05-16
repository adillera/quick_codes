class Array
  # For reference:
  # https://www.mathsisfun.com/data/standard-deviation-formulas.html

  # Population standard deviation
  def stdevp
    return false unless self.length > 0

    arr = self
    # Step 1: Get the mean
    mean = arr.inject(:+).to_f / arr.length.to_f

    # Step 2: Subtract the mean and square the result
    step_2 = arr.reduce([]) do |i, n|
      i << (n.to_f - mean) ** 2
    end

    # Step 3: Get mean of step 2
    step_3 = step_2.inject(:+).to_f / step_2.length.to_f

    # Step 4: Square root of step 3
    Math.sqrt(step_3).to_f
  end
end