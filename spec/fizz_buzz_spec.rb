# frozen_string_literal: true
require 'rspec'
require_relative '../src/fizz_buzz.rb'

RSpec.describe FizzBuzz do
  let(:fizzbuzz) do
    fizzbuzz = FizzBuzz.new
  end

  let(:number_list) do
    number_list = fizzbuzz.generate
  end

  it 'should start' do
    expect(fizzbuzz).to be_kind_of(FizzBuzz)
  end

  it 'should return 100 numbers' do
    expect(number_list.length).to eq(100)
  end

  it 'should return first number as 1' do
    expect(number_list[number(1)]).to eq('1')
  end

  it 'should return 2nd number as 2' do
    expect(number_list[number(2)]).to eq('2')
  end

  it 'should return 4th number as 4' do
    expect(number_list[number(4)]).to eq('4')
  end

  it 'should return Fizz when 3' do
    expect(number_list[number(3)]).to eq('Fizz')
  end

  it 'should return Fizz when 6' do
    expect(number_list[number(6)]).to eq('Fizz')
  end

  it 'should return Buzz when 5' do
    expect(number_list[number(5)]).to eq('Buzz')
  end

  it 'should return Buzz when 10' do
    expect(number_list[number(10)]).to eq('Buzz')
  end

  it 'should return FizzBuzz when 15' do
    expect(number_list[number(15)]).to eq('FizzBuzz')
  end

  it 'should return FizzBuzz when 30' do
    expect(number_list[number(30)]).to eq('FizzBuzz')
  end

  def number(num)
    num - 1
  end
end
