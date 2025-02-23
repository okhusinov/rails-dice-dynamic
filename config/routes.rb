Rails.application.routes.draw do

  get("/dice/:number_of_dice/:how_many_sides", { :controller => "dice", :action => "play_dice" })
  @num_dice = params.fetch("number_of_dice").to_i
  @sides = params.fetch("how_many_sides").to_i
  
  get("/", { :controller => "dice", :action => "homepage" })

end
