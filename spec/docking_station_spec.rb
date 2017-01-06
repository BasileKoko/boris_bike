require './lib/docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}


  it 'should respond to working method' do
    bike = double(:bike)
    expect(bike).to respond_to :working?
  end

  it {is_expected.to respond_to :dock}
  it { is_expected.to respond_to(:dock).with(1).argument}
  it 'should be able to dock bike'do
    bike = double(:bike)
    expect(subject.dock(bike)).to eq [bike]
  end


  it 'should raise error if there is no bike in the dock' do
  expect { subject.release_bike }.to raise_error('No bikes available at this dock')
end


it 'should raise an error if station is full' do
  subject.capacity.times{subject.dock double(:bike)}
  expect {subject.dock double(:bike)}.to raise_error('station is full')
end

it {is_expected.to respond_to(:report_broken)}
it 'should be able to report broken bikes'do
    bike = double(:bike)
    subject.dock(bike)
    expect(subject.report_broken).to eq [bike]
end

end
