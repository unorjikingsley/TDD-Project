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

# require_relative 'spec_helper'

# describe Solver do
#   subject { Solver.new }
#   context '#factorial' do
#     it 'takes integer and returns factorial' do
#       # Arrange
#       integer = 5
#       factorial = 120
#       # Act
#       actual = subject.factorial(integer)
#       # Assert
#       expect(actual).to eql factorial
#     end
#     it 'factorial of 0 is 1' do
#       # Arrange
#       integer = 0
#       factorial = 1
#       # Act
#       actual = subject.factorial(integer)
#       # Assert
#       expect(actual).to eql factorial
#     end
#     it 'raises exception for negative integer' do
#       # Arrange
#       integer = -1

#       # Act & Assert
#       expect { subject.factorial(integer) }.to raise_error('exception error')
#     end
#   end

#   context '#reverse' do
#     it 'takes a string and return it reversed' do
#       # Arrange
#       string = 'hello'
#       # Act
#       result = subject.reverse(string)
#       # Assert
#       expect(result).to eql 'olleh'
#     end
#   end

#   context '#fizzbuzz' do
#     it 'gets 3 and returns fizz' do
#       # Arrange
#       integer = 3

#       # Act
#       result = subject.fizzbuzz(integer)

#       # Assert
#       expect(result).to eql 'fizz'
#     end
#     it 'gets 5 and returns buzz' do
#       # Arrange
#       integer = 5

#       # Act
#       result = subject.fizzbuzz(integer)

#       # Assert
#       expect(result).to eql 'buzz'
#     end
#     it 'gets 15 and returns fizzbuzz' do
#       # Arrange
#       integer = 15

#       # Act
#       result = subject.fizzbuzz(integer)

#       # Assert
#       expect(result).to eql 'fizzbuzz'
#     end
#     it 'gets 7 and returns 7' do
#       # Arrange
#       integer = 7

#       # Act
#       result = subject.fizzbuzz(integer)

#       # Assert
#       expect(result).to eql 7
#     end
#   end
# end
