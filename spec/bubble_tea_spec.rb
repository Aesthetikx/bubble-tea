require 'spec_helper'

describe BubbleTea do
  context 'tea types' do
    it 'has a complete list of tea types' do
      expect(BubbleTea.types).to match_array([
        FusionTea,
        LightFusionTea,
        MilkTea,
        TurtleTea,
        TikiTea,
        LightMilkTea,
        ThaiTea,
        HotChai,
        VietnameseIcedCoffee,
        CalpicoCooler,
        Smoothie,
        Snowbubble
      ].sort_by { |klass| klass.name })
    end
  end
end
