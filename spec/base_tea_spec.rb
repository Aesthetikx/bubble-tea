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

end
