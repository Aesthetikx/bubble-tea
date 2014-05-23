require 'spec_helper'

describe BaseTea do

  context 'temperature' do

    it 'correctly selects hot teas' do
      teas = BaseTea.all do
        hot
      end

      teas.each { |tea| expect(tea.temperature).to eq :hot }
    end

    it 'correctly selects cold teas' do
      teas = BaseTea.all do
        cold
      end

      teas.each { |tea| expect(tea.temperature).to eq :cold }
    end

  end

end
