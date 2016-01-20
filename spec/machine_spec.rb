require 'machine'

describe Machine do
    it 'accepts coins and updates display' do
        subject.insert '5'
        expect(subject.diplay).tp eq '5 cents'
    end   
end
