bubble-tea
==========

A Ruby Gem to generate possible bubble teas

###Installation
```bash
gem install bubble-tea
```
###Usage

```ruby
# Get all teas
BubbleTea.all

# Generate a random tea
BubbleTea.any

# Specify a flavor
BubbleTea.any do
  with :coconut
end

# Filter a flavor
BubbleTea.any do
  without :taro
end

# Specify a base tea
Snowbubble.all do
  with :peach
end

# Valid base types
[CalpicoCooler, FusionTea, Smoothie, Snowbubble, MilkTea, TurtleTea, TikiTea, ThaiTea]

# Get all hot teas
BubbleTea.hot

# Complex example
FusionTea.any do
  size :large
  bubbles :mango_stars
  with :strawberry
end
```
