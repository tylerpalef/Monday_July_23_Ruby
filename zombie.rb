class Zombie
# Created class Zombie

# /////////////////////////////////
# Created class variables
  @@horde = []
  @@plague_level = 10
  @@max_speed = 5
  @@max_strength = 0
  @@default_speed = 1
  @@default_strength = 3
# /////////////////////////////////
# Created instance methods
str = 0

  def initialize(spd, str)
    if spd > @@max_speed
      @spd = @@default_speed
    else
      @spd = spd
    end
  end

    if str > @@max_strength
      @str = @@default_strength
    else
      @str = str
    end
  end

  def encounter
    if outrun_zombie? == true
    puts "You have outrun the zombie"

      elsif outrun_zombie? == false && survive_attack? == outrun_zombie
        @@horde << initalize(rand(@@max_speed), rand(@@max_strength))
        puts "You are now a zombie!"

      else
        puts "You outran the zombie!"
      end
    end


  def outrun_zombie?
    run_speed = rand(@@max_speed)
    if run_speed > @spd
      return true
    else
      return false
      end
  end


  def survive_attack?
    random_str = rand(@@max_strength)
   if random_str > @str
     return true
   else
     return false
   end
 end

# /////////////////////////////////
# Created class methods

  def self.all
    return @@horde
  end

  def self.new_day
    self.some_die_off
    self.spawn
    self.increase_plague_level
# Calling on these other existing class methods
  end

  def self.some_die_off
    rand(0...11).times do
    @@horde.delete(@@horde.sample)
    end
  end

  def self.spawn
    rand(@@plague_level).times do
    @@horde << self.new(rand(@@max_speed),rand(@@max_strength))
    end
  end

  def self.increase_plague_level
    @@plague_level += rand(0...3).times do
  end

  def self.all
    return @@horde
end

# /////////////////////////////////
# Example questions

puts Zombie.all.inspect # []
puts Zombie.all
Zombie.new_day
puts Zombie.all.inspect # [#<Zombie:0x005626ecc5ebd0 @speed=4, @strength=0>, #<Zombie:0x005626ecc5eba8 @speed=0, @strength=4>, #<Zombie:0x005626ecc5eb80 @speed=4, @strength=4>]
zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]
puts zombie1.encounter # You are now a zombie
puts zombie2.encounter # You died
puts zombie3.encounter # You died
Zombie.new_day
# puts Zombie.all.inspect # [#<Zombie:0x005626ecc5e1f8 @speed=0, @strength=0>, #<Zombie:0x005626ecc5e180 @speed=3, @strength=3>, #<Zombie:0x005626ecc5e158 @speed=1, @strength=2>, #<Zombie:0x005626ecc5e090 @speed=0, @strength=4>]
zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]
puts zombie1.encounter # You got away
puts zombie2.encounter # You are now a zombie
puts zombie3.encounter # You died
end
