class Computer
  attr_accessor :colors
  def initialize(colors = ['Red', 'Blue', 'Yellow', 'Green', 'White', 'Black'])
    @colors = colors
  end

  def generate_code
    Array.new(4) {@colors.sample}
  end
end