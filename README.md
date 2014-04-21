bubble-tea
==========

A Ruby Gem to generate possible bubble teas

###Installation
```bash
gem install bubble-tea
```
###Usage

```ruby
#Get all milk teas
BubbleTea.milk

#Get all hot teas
BubbleTea.hot

#Specify a flavor
BubbleTea.any do
  with :coconut
end

#Filter a flavor
BubbleTea.any do
  without :taro
end

#Complete example
BubbleTea.milk do
  size :large
  bubbles :black
  with :oreo
end
```
