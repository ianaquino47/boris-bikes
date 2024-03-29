require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available.'
    end

    it 'releases working bikes' do
      bike = double(:bike, broken?: false)
      subject.dock bike
      expect(subject.release_bike).to be bike
    end

    it 'does not release broken bikes' do
      bike = double(:bike, broken?: true)
      subject.dock bike
      expect {subject.release_bike}.to raise_error 'No bikes available.'
    end
  end

  describe '#dock' do
    it 'raises an error when full' do
      subject.capacity.times { subject.dock :bike }
      expect { subject.dock :bike }.to raise_error 'Docking station full.'
    end
  end
end
