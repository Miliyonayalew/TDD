require_relative '../solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  context 'Testing the factorial method' do
    it 'should return 1 when the given argument is 0' do
      expect(@solver.factorial(0)).to eq 1
    end

    it 'should return 6 when the given argument is 3' do
      expect(@solver.factorial(3)).to eq 6
    end

    it 'should retun error when the given argument is negative' do
      expect(@solver.factorial(-1)).to eq 'Please enter a positive number'
    end
  end

  context 'Testing the reverse method' do
    it 'should return "olleh" when the given argument is "hello"' do
      expect(@solver.reverse('hello')).to eq 'olleh'
    end

    it 'should return enter a string when the given argument is not a string' do
      expect(@solver.reverse(1)).to eq 'Please enter a string'
    end
  end

  context 'Testing the fizzbuzz method' do
    it 'should return "fizz" when the given argument is divisible by 3' do
      expect(@solver.fizzbuzz(3)).to eq 'fizz'
    end

    it 'should return "buzz" when the given argument is divisible by 5' do
      expect(@solver.fizzbuzz(5)).to eq 'buzz'
    end

    it 'should return "fizzbuzz" when the given argument is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end

    it 'should return the given argument when the given argument is not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(2)).to eq '2'
    end
  end
end
