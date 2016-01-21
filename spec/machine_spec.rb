require 'machine'

describe Machine do
  it 'accepts coins and updates display' do
    subject.insert '5'
    expect(subject.display).to eq '5 cents'
  end
  it 'displays INSERT COIN when no coins inserted' do
    expect(subject.display).to eq 'INSERT COIN'
  end
end
