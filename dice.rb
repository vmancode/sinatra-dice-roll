# /dice.rb

require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')



get("/") do
  "Hello World"
"<h1>Dice Roll</h1>
<ul>
<li><a href=\"/dice/2/6\">Roll two 6-sided dice</a></li>
<li><a href=\"/dice/2/10\">Roll two 10-sided dice</a></li>
<li><a href=\"/dice/1/20\">Roll one 20-sided die</a></li>
<li><a href=\"/dice/5/4\">Roll five 4-sided dice</a></li>
</ul>"


end

get("/zebra") do
  "We must add a route for each path we want to support"
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>
   <h1><a href=\"/\">Home</a></h1>
   <h1><a href=\"/dice/2/6\">Refresh</a></h1>"
end

get("/dice/2/10") do 
  first_die1 = rand(1..10)
  second_die1 = rand(1..10)
  sum1 = first_die1 + second_die1
  outcome1 = "You rolled a #{first_die1} and a #{second_die1} for a total of #{sum1}."
  
  "<h1>2d10</h1>
  <p>#{outcome1}</p>
  <h1><a href=\"/\">Home</a></h1>
  <h1><a href=\"/dice/2/10\">Refresh</a></h1>"
end


get("/dice/1/20") do #(simulate one 20-sided die)
  first_die2 = rand(1..20)
  #second_die = (1..10)
  outcome = " you rolled a #{first_die2}."
  "<h1>1d20</h1>
  <p>#{outcome}</p>
  <h1><a href=\"/\">Home</a></h1>
  <h1><a href=\"/dice/1/20\">Refresh</a></h1>"
  end
  
  
  get ("/dice/5/4") do #(simulate five 4-sided dice)
    first_die = rand(1..4)
    second_die = rand(1..4)
    third_die = rand(1..4)
    fourth_die = rand(1..4)
    fifth_die = rand(1..4)
    sum = first_die + second_die + third_die  + fourth_die + fifth_die
    outcome = " you rolled a #{first_die}, a #{second_die}, a #{third_die}, a #{fourth_die}  and a #{fifth_die} for a total of #{sum}."
    "<h1>5d4</h1>
    <p>#{outcome}</p>
    <h1><a href=\"/\">Home</a></h1>
    <h1><a href=\"/dice/5/4\">Refresh</a></h1>"
    end
    