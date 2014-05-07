class Drink

  attr_accessor :temperature, :type, :bubbles, :size, :flavor

  def initialize options = { }
    @temperature = options[:temperature] || :cold
    @type = options[:type] || :milk_tea
    @bubbles = options[:bubbles] || :none
    @size = options[:size] || :medium
    @flavor = options[:flavor] || :coconut
  end

end
