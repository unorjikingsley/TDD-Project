require './solver'

describe Solver do
  # describe '#factorial' do
  #   it 'return the factorial of the integer given' do
  #     n = Solver.new
  #     expect(n.factorial(5)).to eq(120)
  #   end
  # end

  # ----------------------------------------------------------------
  # subject { Solver.new } - rspec already defines this. there is no need

  context '#factorial' do
    it 'return the factorial of the integer given' do
      # n = Solver.new
      expect(subject.factorial(5)).to eq(120)
    end

    it 'should raise an exception if the integer is negative' do
      expect { subject.factorial(-1) }.to raise_error(ArgumentError)
    end

    it 'should return 1 as a factorial of 0' do
      expect(subject.factorial(0)).to eq(1)
    end
  end

  context '#reverse' do
    it 'should return the reverse of the word' do
      expect(subject.reverse('hello')).to eq('olleh')
    end
  end

  context '#fizzbuzz' do
    it 'should return the fizzbuzz if the no is % by 3 and 5 == 0' do
      expect(subject.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'should return the fizzbuzz if the no is % by 3 == 0' do
      expect(subject.fizzbuzz(3)).to eq('fizz')
    end

    it 'should return the fizzbuzz if the no is % by 3 and 5 == 0' do
      expect(subject.fizzbuzz(5)).to eq('buzz')
    end

    it 'should return the fizzbuzz if no num is % by 3 and 5 == 0' do
      expect(subject.fizzbuzz(7)).to eq('7')
    end
  end
end
