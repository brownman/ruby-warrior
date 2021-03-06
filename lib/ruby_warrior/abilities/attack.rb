module RubyWarrior
  module Abilities
    class Attack < Base
      def description
        "Attack the unit in given direction (forward by default)."
      end
      
      def perform(direction = :forward)
        receiver = unit(direction)
        if receiver
          @unit.say "attacks #{receiver}"
          damage(receiver, @unit.attack_power)
        else
          @unit.say "attacks and hits nothing"
        end
      end
    end
  end
end
