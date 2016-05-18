class Array
  # Average of multiple numbers
  def ave
    return false unless self.length > 0

    arr = self

    arr.inject(:+).to_f / arr.length.to_f
  end

  # For reference:
  # https://www.mathsisfun.com/data/standard-deviation-formulas.html
  # Population standard deviation
  def stdevp
    return false unless self.length > 0

    arr = self
    # Step 1: Get the mean
    mean = arr.ave

    # Step 2: Subtract the mean and square the result
    step_2 = arr.reduce([]) do |i, n|
      i << (n.to_f - mean) ** 2
    end

    # Step 3: Get mean of step 2
    step_3 = step_2.inject(:+).to_f / step_2.length.to_f

    # Step 4: Square root of step 3
    Math.sqrt(step_3).to_f
  end

  # For reference:
  # http://stackoverflow.com/questions/27249327/how-to-merge-hashes-if-a-specified-keys-values-are-same-in-a-array
  # Credits to http://stackoverflow.com/users/390819/w0lf for the solution
  def merge_hashes_using_key(key)
    return false unless self.length > 0

    arr = self

    arr.group_by{ |h| h[key] }.collect{ |_, hs| hs.reduce(:merge) }
  end
end
