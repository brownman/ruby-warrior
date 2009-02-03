module RubyWarrior
  class Level
    attr_reader :profile, :number
    attr_accessor :description, :tip, :clue, :warrior, :floor, :time_bonus
    
    def initialize(profile, number)
      @profile = profile
      @number = number
      @time_bonus = 0
      @config = Configuration.new()
      if @config.start?
        @engine = Engine.new()
      end
      @state = false
      @timer = Timer.new(1) {
        @state = true
      }
      @timer.start()
    end
    
    def player_path
      @profile.player_path + "/level-" + @number.to_s.rjust(3, '0')
    end
    
    def load_path
      @profile.tower_path + "/level_" + @number.to_s.rjust(3, '0') + ".rb"
    end
    
    def load_level
      LevelLoader.new(self).instance_eval(File.read(load_path))
    end
    
    def load_player
      $: << player_path
      load 'player.rb'
    end
    
    def generate_player_files
      load_level
      PlayerGenerator.new(self).generate
    end
    def engine_set
      if @config.runnable == true
        @engine.maps.set(@floor)
        @engine.maps.create()
        @engine.maps.set_map()
        @engine.units.set_units(@floor.units)
      end
    end
    def engine_update
      if @config.runnable == true
	@engine.units.update()
      end
    end
    def play(turns = 1000)
      load_level
      engine_set()
      turns.times do |n|
        return if passed? || failed?
	UI.puts "- turn #{n+1} ="
	UI.print @floor.to_map
	@floor.units.each { |unit| unit.prepare_turn }
	@floor.units.each { |unit| unit.perform_turn }
        yield if block_given?
	@time_bonus -= 1 if @time_bonus > 0
	engine_update()
	wait()
      end
    end
    def wait
       loop do
	 @engine.draw()
	 @timer.check()
	 if @state == true
           @state = false
	   break
	 end
       end
    end
    def tally_points
      @profile.abilities = warrior.abilities.keys
      
      UI.puts "Level Score: #{warrior.score}"
      @profile.score += warrior.score
      
      UI.puts "Time Bonus: #{time_bonus}"
      @profile.score += @time_bonus
      
      if floor.other_units.empty?
        UI.puts "Clear Bonus: #{clear_bonus}"
        @profile.score += clear_bonus
      end
      
      UI.puts "Total Score: #{@profile.score}"
    end
    
    def clear_bonus
      ((warrior.score + time_bonus)*0.2).round
    end
    
    def passed?
      @floor.stairs_space.warrior?
    end
    
    def failed?
      !@floor.units.include?(warrior)
    end
    
    def exists?
      File.exist? load_path
    end
    
    def setup_warrior(warrior)
      @warrior = warrior
      @warrior.add_abilities(*profile.abilities)
      @warrior.name = profile.warrior_name
    end
  end
end
