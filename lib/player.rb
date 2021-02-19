class Player
	attr_reader :name, :hp
  HIT_POINTS = 60

	def initialize(name)
		@name = name
    @hp = HIT_POINTS
	end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hp -= 10 
  end 

end
