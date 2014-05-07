require 'spec_helper'

describe Drink do

  context 'drink attributes' do

    before :each do
      @drink = Drink.new({ :temperature => :cold, :bubbles => :black, :size => :medium, :type => :milk_tea, :flavor => :coconut })
    end

    it 'has a temperature' do
      @drink.temperature.should eq(:cold)
    end

    it 'has a size' do
      @drink.size.should eq(:medium)
    end

    it 'has bubbles' do
      @drink.bubbles.should eq(:black)
    end

    it 'has a type' do
      @drink.type.should eq(:milk_tea)
    end

    it 'has a flavor' do
      @drink.flavor.should eq(:coconut)
    end

    it 'has sane defaults' do
      drink = Drink.new
      drink.temperature.should eq(:cold)
      drink.size.should eq(:medium)
      drink.type.should eq(:milk_tea)
      drink.bubbles.should eq(:none)
      drink.flavor.should eq(:coconut)
    end
  end

end
