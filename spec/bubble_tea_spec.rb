require 'spec_helper'

describe BubbleTea do
  it 'has a complete list of tea types' do
    expect(BubbleTea.types).to match_array([
      :fusion_tea,
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
      :snowbubble
    ])
  end

  it 'has a complete list of tea sizes' do
    expect(BubbleTea.sizes).to match_array([:medium, :large])
  end

  it 'has a complete list of tea temperatures' do
    expect(BubbleTea.temperatures).to match_array([:cold, :hot])
  end

  it 'has a complete list of bubbles' do
    expect(BubbleTea.bubbles).to match_array([:none, :black_bubbles, :colored_bubbles, :mango_stars, :lychee_jellies, :rainbow_jellies])
  end

  it 'returns a list of drinks for #all' do
    BubbleTea.all.each do |tea|
      expect(tea).to be_a(Drink)
    end
  end

  it 'returns one drink for #any' do
    expect(BubbleTea.any).to be_a(Drink)
  end

end
