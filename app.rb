require 'bundler'
Bundler.require

puts "C'est quoi ton nom J1?"
p1_input = gets.chomp
puts "Bonjour #{p1_input} ton symbole est le X"
puts "C'est quoi ton nom J2?"
p2_input =gets.chomp
puts "Bonjour #{p2_input} ton symbole est le O"



    @tableau = {a1: " ", a2: " ", a3: " ", b1: " ", b2: " ",b3: " ",c1: " ",c2: " ",c3: " "}
    
def show
        puts "    A    B    C"
        puts "    " +"---"*5
        puts " 1  | #{@tableau[:a1]} | #{@tableau[:b1]} | #{@tableau[:c1]} |"
        puts "    " +"---"* 5
        puts " 2  | #{@tableau[:a2]} | #{@tableau[:b2]} | #{@tableau[:c2]} |"
        puts "    " +"---"* 5
        puts " 3  | #{@tableau[:a3]} | #{@tableau[:b3]} | #{@tableau[:c3]} |"
        puts "    " +"---"* 5
		
end 

def  player1
	if @choice_player1 == "a1" || @choice_player1 == "A1"  #@tableau.keys[0]
		@tableau[:a1] =("X")
	elsif @choice_player1 == "a2" || @choice_player1 == "A2"  #@tableau.keys[1]
		@tableau[:a2] =("X")
	
	elsif @choice_player1 == "a3" || @choice_player1 == "A3"  #@tableau.keys[2]
		@tableau[:a3] =("X")
	elsif @choice_player1 == "b1" || @choice_player1 == "B1"  #@tableau.keys[3]
		@tableau[:b1] =("X")
	elsif @choice_player1 == "b2" || @choice_player1 == "B2"  #@tableau.keys[4]
		@tableau[:b2] =("X")
	elsif @choice_player1 == "b3" || @choice_player1 == "B3"  #@tableau.keys[5]
		@tableau[:b3] =("X")
	elsif @choice_player1 == "c1" || @choice_player1 == "C1"  #@tableau.keys[6]
		@tableau[:c1] =("X")
	elsif @choice_player1 == "c2" || @choice_player1 == "C2"  #@tableau.keys[7]
		@tableau[:c2] =("X")
	elsif @choice_player1 == "c3" || @choice_player1 == "C3"  #@tableau.keys[8]
		@tableau[:c3] =("X")
    end
end

def  player2
	if @choice_player1 == "a1" || @choice_player1 == "A1"  #@tableau.keys[0]
		@tableau[:a1] =("O")
	elsif @choice_player1 == "a2" || @choice_player1 == "A2"  #@tableau.keys[1]
		@tableau[:a2] =("O")
	elsif @choice_player1 == "a3" || @choice_player1 == "A3"  #@tableau.keys[2]
		@tableau[:a3] =("O")
	elsif @choice_player1 == "b1" || @choice_player1 == "B1"  #@tableau.keys[3]
		@tableau[:b1] =("O")
	elsif @choice_player1 == "b2" || @choice_player1 == "B2"  #@tableau.keys[4]
		@tableau[:b2] =("O")
	elsif @choice_player1 == "b3" || @choice_player1 == "B3"  #@tableau.keys[5]
		@tableau[:b3] =("O")
	elsif @choice_player1 == "c1" || @choice_player1 == "C1"  #@tableau.keys[6]
		@tableau[:c1] =("O")
	elsif @choice_player1 == "c2" || @choice_player1 == "C2"  #@tableau.keys[7]
		@tableau[:c2] =("O")
	elsif @choice_player1 == "c3" || @choice_player1 == "C3"  #@tableau.keys[8]
		@tableau[:c3] =("O")
    end
end

i =0
while (i <5) do show
	puts "J1 choisissez une case à cocher"
	@choice_player1 = gets.chomp.to_s
    #player 1 qui joue
	player1
	system("clear")
    if (@tableau[:a1] ==("X") && @tableau[:b1] ==("X") && @tableau[:c1] ==("X")||
		@tableau[:a2] ==("X") && @tableau[:b2] ==("X")&& @tableau[:b3] ==("X") ||
		@tableau[:a3] ==("X") && @tableau[:b3] ==("X") && @tableau[:c3] ==("X")||
		@tableau[:a1] ==("X") && @tableau[:a2] ==("X") && @tableau[:a3] ==("X")||
		@tableau[:b1] ==("X") && @tableau[:b2] ==("X") && @tableau[:b3] ==("X")||
		@tableau[:c1] ==("X") && @tableau[:c2] ==("X") && @tableau[:c3] ==("X")||
		@tableau[:a1] ==("X") && @tableau[:b2] ==("X") && @tableau[:c3] ==("X")||
        @tableau[:c1] ==("X") && @tableau[:b2] ==("X") && @tableau[:a3] ==("X"))
        puts "#{p1_input} You win"
        break 
	end
    show
	#player 2 qui joue
	puts "J2 choisissez une case à cocher"
	@choice_player1 = gets.chomp.to_s
	player2
	show
    if (@tableau[:a1] ==("O") && @tableau[:b1] ==("O") && @tableau[:c1] ==("O")||
		@tableau[:a2] ==("O") && @tableau[:b2] ==("O")&& @tableau[:b3] ==("O") ||
		@tableau[:a3] ==("O") && @tableau[:b3] ==("O") && @tableau[:c3] ==("O")||
		@tableau[:a1] ==("O") && @tableau[:a2] ==("O") && @tableau[:a3] ==("O")||
		@tableau[:b1] ==("O") && @tableau[:b2] ==("O") && @tableau[:b3] ==("O")||
		@tableau[:c1] ==("O") && @tableau[:c2] ==("O") && @tableau[:c3] ==("O")||
		@tableau[:a1] ==("O") && @tableau[:b2] ==("O") && @tableau[:c3] ==("O")||
        @tableau[:c1] ==("O") && @tableau[:b2] ==("O") && @tableau[:a3] ==("O"))
        puts "#{p2_input} You win"
        break 
	end
	system("clear")

i= i+1
end 
puts "match nul" 

#binding.pry
