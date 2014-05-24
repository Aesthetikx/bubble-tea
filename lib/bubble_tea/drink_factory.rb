module DrinkFactory
  attr_accessor :drinks
  attr_accessor :without_filters
  attr_accessor :with_filters

  def initialize
    @flavors = self.class.flavors
    @types = self.class.types
    @temperatures = self.class.temperatures
    @sizes = self.class.sizes
    @bubbles = self.class.bubbles

    @drinks = []
    @with_filters = []
    @without_filters = []
    make_permutations
  end

  def make_permutations
    @flavors.each do |flavor|
      @types.each do |type|
        @bubbles.each do |bubble|
          @temperatures.each do |temperature|
            @sizes.each do |size|
              drink = Drink.new( {:bubbles => bubble, :flavor => flavor, :type => type, :temperature => temperature, :size => size} )
              @drinks << drink
            end
          end
        end
      end
    end
  end

  def with flavor
    @with_filters << flavor
  end

  def without flavor
    @without_filters << flavor
  end

  def hot
    @drinks.select! { |drink| drink.temperature == :hot }
  end

  def cold
    @drinks.select! { |drink| drink.temperature == :cold }
  end

  def medium
    @drinks.select! { |drink| drink.size == :medium }
  end

  def large
    @drinks.select! { |drink| drink.size == :large }
  end

  def filter_with
    unless with_filters.empty?
      @drinks.select! { |drink| with_filters.include? drink.flavor }
    end
  end

  def filter_without
    unless without_filters.empty?
      @drinks.reject! { |drink| without_filters.include? drink.flavor }
    end
  end

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def all &block
      temp = self.new
      if block_given?
        temp.instance_eval(&block)
      end
      temp.filter_without
      temp.filter_with
      temp.drinks
    end

    def any &block
      self.all(&block).sample
    end
  end
end
