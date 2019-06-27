require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  it 'gets a bike' do
    bike = Bike.new
    # subject.dock(bike)
    # subject.release_bike
    expect(bike).to be_working
  end

  it 'shows docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes[0]).to eq bike
  end

  describe '#dock(bike)' do
    it 'docks a bike' do
      bike = Bike.new
      expect(subject.dock(bike)[0]).to eq bike
    end

    describe DockingStation do
      describe 'dock' do
        it 'raises an error when full' do
          subject.capacity.times { subject.dock Bike.new }
          expect { subject.dock Bike.new }.to raise_error 'The docking station is full.'
        end
      end
    end
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe 'initialization' do
    it 'has a variable capacity' do
      docking_station = DockingStation.new(50)
      50.times { docking_station.dock Bike.new }
      expect { docking_station.dock Bike.new }.to raise_error 'The docking station is full.'
    end
  end
end
