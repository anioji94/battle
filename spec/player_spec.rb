require 'player'

describe Player do

	subject(:ash) { Player.new("Ash") }
  subject(:gary) { Player.new("Gary") }
	
	describe '#name' do
		it 'should show the name of the player' do			
			expect(ash.name).to eq "Ash"
		end
	end

	describe '#receive_damage' do
		it 'reduces HP from opponent' do 
      expect { gary.receive_damage }.to change { gary.hp }.by(-10)
		end
	end

end

# =begin
# expect(mittens).to receive(:receive_damage)
# charlotte.attack(mittens)

# # let(:gary) { method: :value, method2: :value2 }


# **Another version of let is subject.**

# creating subject 

# subject { Factorial.new } or if you want to give it a name 

# subject(:calculator) { Factorial.new }
# subject { described_class.new("Ash") }
# =end

# Player 1 attacks Player 2
# Player_2.attack It's attacking itself
# Player 2's health goes down by 10
  # describe '#attack' do 
	# #	expect(mittens).to receive(:receive_damage)

    
  #  #   let(:gary) { receive_damage: 50 }
    
    
      
    
  # end