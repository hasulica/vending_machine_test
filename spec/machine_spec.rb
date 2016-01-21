require 'machine'

describe Machine do
  it 'accepts coins and updates display' do
    subject.insert '5'
    expect(subject.display).to eq '5 cents'
  end
  it 'displays INSERT COIN when no coins inserted' do
    expect(subject.display).to eq 'INSERT COIN'
  end
  it 'accepts nickles and displays 5 cents' do
    subject.insert '5'
    expect(subject.display).to eq '5 cents'
  end
  it 'accepts dimes and displays 10 cents' do
    subject.insert '10'
    expect(subject.display).to eq '10 cents'
  end
  it 'accepts quarters and displays 25 cents' do
    subject.insert '25'
    expect(subject.display).to eq '25 cents'
  end
  it 'does not accept pennies and displays error message' do
    subject.insert '1'
    expect(subject.display).to eq 'Cannot accept pennies. Please insert coin.'
  end
end
