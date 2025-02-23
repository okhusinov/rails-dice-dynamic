class DiceController < ApplicationController

  def play_dice

    @num_dice = params.fetch("number_of_dice").to_i
    @sides = params.fetch("how_many_sides").to_i
    
    @dice_rolls = Array.new
    
    @num_dice.times do
      @new_roll = rand(1..@sides)
      @dice_rolls.push(@new_roll)  
    end
    
    render ({ :template => "dice_templates/play_dice" })
  
  end

  def homepage

    render ({ :template => "dice_templates/home" })
  
  end

end
