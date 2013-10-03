require_relative '../lib/calc.rb'

describe Calc do
	context 'without arguments' do
		subject(:calc) {Calc.new}
		its(:plus) {should == 0}
		its(:minus) {should == 0}
		its "after #clear" do
			calc.clear
			calc.arr.should == []
		end
	end

	context 'with normal args(5,7,-13)' do
		subject(:calc) {Calc.new(5, 7, -13)}
		its(:plus) {should == -1}
		its(:minus) {should == 1}	
		its "after #clear" do
			calc.clear
			calc.arr.should == []
		end	
	end

	context 'with some bad args(5,7,-13,"kitty", :fluffy, pur: :pur)' do
		subject(:calc) {Calc.new(5, 7, -13, "kitty", :fluffy, pur: :pur)}
		its(:plus) {should == -1}
		its(:minus) {should == 1}
		its "after #clear" do
			calc.clear
			calc.arr.should == []
		end		
	end	
end