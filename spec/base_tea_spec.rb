require 'spec_helper'

describe BaseTea do

  context 'temperature' do

    it 'selects hot teas' do
      teas = BaseTea.all do
        hot
      end

      teas.each { |tea| expect(tea.temperature).to eq :hot }
    end

    it 'selects cold teas' do
      teas = BaseTea.all do
        cold
      end

      teas.each { |tea| expect(tea.temperature).to eq :cold }
    end

  end

  context 'size' do

    it 'selects medium teas' do
      teas = BaseTea.all do
        medium
      end

      teas.each { |tea| expect(tea.size).to eq :medium }
    end

    it 'selects large teas' do
      teas = BaseTea.all do
        large
      end

      teas.each { |tea| expect(tea.size).to eq :large }
    end

  end

  context 'flavor' do

    it 'removes teas for without' do
      teas = BaseTea.all do
        without :taro
        without :oreo
      end

      teas.each do |tea|
        expect(tea.flavor).not_to eq :taro
        expect(tea.flavor).not_to eq :oreo
      end
    end

    it 'includes teas for with' do
      teas = BaseTea.all do
        with :taro
        with :oreo
      end

      flavors = teas.collect { |tea| tea.flavor }.uniq

      expect(flavors).to eq [:oreo, :taro]
    end

  end

end
