require 'docking_station'

describe DockingStation do
<<<<<<< HEAD
    it { is_expected.to respond_to :release_bike }
    it "Returns bike and is working" do
        bike = subject.release_bike
        expect(bike).to be_working
    end
    it {is_expected.to respond_to(:dock).with(1).argument}
    it {is_expected.to respond_to(:bike)}
    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end
    it 'returns docked bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike). to eq bike
    end
=======
  it { is_expected.to respond_to :release_bike }

  it 'gets a bike' do
    bike = subject.release_bike
    expect(bike).to be_working
    # expect(subject.release_bike).to eq true
  end
>>>>>>> refs/remotes/origin/master
end
