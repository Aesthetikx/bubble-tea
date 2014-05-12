require 'spec_helper'

describe MilkTea do

  it 'has the correct type' do
    expect(MilkTea.any.type).to eq(:milk_tea)
  end

  it 'has eight flavors' do
    flavors = MilkTea.all.collect{ |drink| drink.flavor }.uniq
    expect(flavors.size).to eq(8)
  end

  it 'has hot and cold temperatures' do
    temperatures = MilkTea.all.collect{ |drink| drink.temperature }.uniq.sort
    expect(temperatures).to eq([:cold, :hot])
  end

  it 'has medium and large sizes' do
    sizes = MilkTea.all.collect{ |drink| drink.size }.uniq.sort
    expect(sizes).to eq([:large, :medium])
  end

  it 'has five types of bubbles, and no bubbles' do
    bubbles = MilkTea.all.collect{ |drink| drink.bubbles }.uniq
    expect(bubbles.size).to eq(6)
  end

end
