class BaseTea

  attr_accessor :drinks

  def initialize
    @flavors = self.class.flavors
    @types = self.class.types
    @temperatures = self.class.temperatures
    @sizes = self.class.sizes
    @bubbles = self.class.bubbles

    @drinks = []
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
    @drinks.reject! { |drink| drink.flavor != flavor }
  end

  def without flavor
    @drinks.reject! { |drink| drink.flavor == flavor }
  end

  def hot
    @drinks.select! { |drink| drink.temperature == :hot }
  end

  def cold
    @drinks.select! { |drink| drink.temperature == :cold }
  end

  def self.all &block
    temp = self.new
    if block_given?
      temp.instance_eval &block
    end
    temp.drinks
  end

  def self.any &block
    self.all(&block).sample
  end

  def self.types
    [ :fusion_tea,
      :light_fusion_tea,
      :milk_tea,
      :turtle_tea,
      :tiki_tea,
      :light_milk_tea,
      :thai_tea,
      :hot_chai,
      :vietnamese_iced_coffee,
      :calpico_cooler,
      :smoothie,
      :snowbubble]
  end

  def self.sizes
    [ :medium,
      :large ]
  end

  def self.temperatures
    [ :hot,
      :cold ]
  end

  def self.bubbles
    [ :colored_bubbles,
      :mango_stars,
      :lychee_jellies,
      :rainbow_jellies,
      :black_bubbles,
      :none ]
  end

  def self.flavors
    [:almond, :banana, :blueberry, :chocolate, :coconut, :green_apple, 
      :green_tea, :guava, :honeydew, :kiwi, :lychee, :mango, :oreo, :papaya, 
      :passionfruit, :peach, :pineapple, :rasberry, :red_bean, :strawberry, 
      :taro, :vanilla, :wildberry]
  end
  
end
