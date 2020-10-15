require 'bundler'
Bundler.require

    
puts "C'est quoi ton nom J1?"
p1_input = gets.chomp

puts "C'est quoi ton nom J2?"
p2_input =gets.chomp

player_1 =["X",p1_input]
player_2 =["O",p2_input]

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
  

puts "Player choisissez une case à cocher"

	@choice_player1 = gets.chomp.to_s

	if @choice_player1 == "a1" || @choice_player1 == "A1"  #@tableau.keys[0]
		@tableau[:a1] =("X")
		puts "ouiiiii"
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
	elsif @choice_player1 == "b1" || @choice_player1 == "B1"  #@tableau.keys[7]
		@tableau[:c2] =("X")
	elsif @choice_player1 == "C3" || @choice_player1 == "C3"  #@tableau.keys[8]
		@tableau[:c3] =("X")
  
  end

  
  end
   i =0
    
   while (i <10) do show
      i=+1
      system("clear")
    
  end
    