class DiceController < ApplicationController

  def play_dice

    @dice_rolls = Array.new
    
    @num_dice.times do
      @new_roll = rand(1..@sides)
      @dice_rolls.push(@new_roll)  
    end
    
    render ({ :template => "dice_templates/5d4" })
  
  end

  def homepage

    render ({ :template => "dice_templates/home" })
  
  end

end
