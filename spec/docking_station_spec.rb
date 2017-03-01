require 'docking_station'


describe DockingStation do
  let(:bike) {double(:bike, :broken?  => false)}
  let(:bike1) {double(:bike1, :broken?  => true)}


  it {is_expected.to respond_to :release_bike}

  it { is_expected.to respond_to(:dock).with(1).argument}

  it 'should be able to dock bike'do
  expect(subject.dock(bike)).to eq [bike]
  end

  it 'should raise error if there is no bike in the dock' do
  expect { subject.release_bike }.to raise_error('No bikes available at this dock')
end


it 'should raise an error if station is full' do
  subject.capacity.times{subject.dock bike}
  expect {subject.dock bike}.to raise_error('station is full')
end


it 'does not release broken bikes' do
    subject.dock bike1
    expect {subject.release_bike}.to raise_error 'No bikes available'
  end
end
