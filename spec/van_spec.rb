require 'docking_station'
require 'bike'
require 'garage'
require 'van'


describe Van do
  describe '#take_broken_bikes' do
    it 'only takes broken bikes' do
      bike = double(:bike, broken?: true)
      bike2 = double(:bike, broken?: false)
      docking_station = double(:docking_station, dock: bike)
      expect(subject.take_broken_bikes).to be bike
    end
  end

  describe '#deliver' do

  end

  describe '#collect' do

  end

  describe '#distribute' do

  end
end
