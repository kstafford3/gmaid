class Procedure
  # You'll get exceptions if you don't declare these methods anyways.
  # These exceptions are a bit more Englishy.

  def match(email)
    raise "You must define method 'match' for class '#{self.class}'"
  end

  def execute(email)
    raise "You must define method 'execute' for class '#{self.class}'"
  end
end
