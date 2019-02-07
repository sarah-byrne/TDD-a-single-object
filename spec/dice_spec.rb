require 'dice'

describe Dice do
  it {is_expected.to respond_to :roll}
  it 'can return a number between 1 and 6 when rolled' do
    expect(subject.roll).to be_between(1,6).inclusive
  end
  it 'can return a random number between 1 and 6 when rolled' do
    arr = []
    10.times do
      arr.push(subject.roll)
    end
    expect(arr.uniq.length).to be > 1
  end
end
