require 'bike'

describe Bike do
  it {is_expected.to respond_to :working?}

  it 'returns working bike by default' do
    expect(subject.working?).to be true
  end
  it {is_expected.to respond_to :report_broken}
  it 'can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end
end
