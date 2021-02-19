require 'player'

describe Player do

	subject { described_class.new("Ash") }
	
	describe '#name' do
		it 'should show the name of the player' do			
			expect(subject.name).to eq "Ash"
		end
	end
end


=begin
**Another version of let is subject.**

creating subject 

subject { Factorial.new } or if you want to give it a name 

subject(:calculator) { Factorial.new }
subject { described_class.new("Ash") }
=end