require './lib/docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}


  it 'should respond to working method' do
    bike = Bike.new
    expect(bike).to respond_to :working?
  end

  it {is_expected.to respond_to :dock}
  it { is_expected.to respond_to(:dock).with(1).argument}
  it 'should be able to dock bike'do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end


  it 'should raise error if there is no bike in the dock' do
  expect { subject.release_bike }.to raise_error('No bikes available at this dock')
end


it 'should raise an error if station is full' do
  subject.capacity.times{subject.dock Bike.new}
  expect {subject.dock(Bike.new)}.to raise_error('station is full')
end

it {is_expected.to respond_to(:report_broken)}

end
