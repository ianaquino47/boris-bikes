require 'bike'

describe Bike do
<<<<<<< HEAD
    it { is_expected.to respond_to :working?}
end
=======
  it { is_expected.to respond_to :working?}

  it 'expects bike to be working' do
    expect(subject.working?).to eq true
  end
end
>>>>>>> refs/remotes/origin/master
