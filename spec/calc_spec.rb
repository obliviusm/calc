require_relative '../lib/calc.rb'

describe Calc do
	context 'without arguments' do
		subject(:calc) {Calc.new}
		its(:plus) {should == 0}
		its(:minus) {should == 0}
	end
end