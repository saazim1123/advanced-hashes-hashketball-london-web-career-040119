# Write your code here!

def game_hash
  
  game = { home: {
            team_name: "Brooklyn Nets",
            colors: ["Black", "White"],
            players: [
              {
                name: "Alan Anderson",
                number: 0,
                shoe: 16,
                points: 22,
                rebounds: 12,
                assists: 12,
                steals: 3,
                blocks: 1,
                slam_dunks: 1
                
              },
              {
                name: "Reggie Evans",
                number: 30,
                shoe: 14,
                points: 12,
                rebounds: 12,
                assists: 12,
                steals: 12,
                blocks: 12,
                slam_dunks: 7
                
              },
              {
                name: "Brook Lopez", 
                number: 11,
                shoe: 17,
                points: 17,
                rebounds: 19,
                assists: 10,
                steals: 3,
                blocks: 1,
                slam_dunks: 15
                
              },
              {
                name: "Mason Plumlee",  
                number: 1,
                shoe: 19,
                points: 26,
                rebounds: 12,
                assists: 6,
                steals: 3,
                blocks: 8,
                slam_dunks: 5
                
              },
              {
                name: "Jason Terry",
                number: 31,
                shoe: 15,
                points: 19,
                rebounds: 2,
                assists: 2,
                steals: 4,
                blocks: 11,
                slam_dunks: 1
              }
            ]
          },
          away: {
            team_name: "Charlotte Hornets",
            colors: ["Purple", "Turquoise"],
            players: [
              {
                name: "Jeff Adrien",
                number: 4,
                shoe: 18,
                points: 10,
                rebounds: 1,
                assists: 1,
                steals: 2,
                blocks: 7,
                slam_dunks: 2
              },
              {
                name: "Bismak Biyombo",
                number: 0,
                shoe: 16,
                points: 12,
                rebounds: 4,
                assists: 7,
                steals: 7,
                blocks: 15,
                slam_dunks: 10
              },
              {
                name: "DeSagna Diop",
                number: 2,
                shoe: 14,
                points: 24,
                rebounds: 12,
                assists: 12,
                steals: 4,
                blocks: 5,
                slam_dunks: 5
              },
              {
                name: "Ben Gordon",
                number: 8,
                shoe: 15,
                points: 33,
                rebounds: 3,
                assists: 2,
                steals: 1,
                blocks: 1,
                slam_dunks: 0
              },
              {
                name: "Brendan Haywood",
                number: 33,
                shoe: 15,
                points: 6,
                rebounds: 12,
                assists: 12,
                steals: 22,
                blocks: 5,
                slam_dunks: 12
              }
            ]
          }
        }
end


def num_points_scored(name) # knows the number of points scored by each player

  points = 0 # This is the variable i want to return at the end of the code
  
  game_hash.each do |team, team_stats|
    team_stats[:players].each do |stats|
      if stats[:name] == name #The player name in the hash has to match the name argument
        points = stats[:points]
      end
    end
  end
  points
end


def shoe_size(name) #knows the shoe size of each player
# Coding is identical to num_points_scored, only information you extract here is from the :shoe key

  shoes = 0
  
  game_hash.each do |team, team_stats|
    team_stats[:players].each do |stats|
      if stats[:name] == name
        shoes = stats[:shoe]
      end
    end
  end
 shoes
end


def team_colors(team_name) #knows the Brooklyn Nets colors are Black and White

#if/else statement helps check if the information is correct and returns the right information when correct

  if team_name == game_hash[:home][:team_name] # Checks if the team_name argument is Brooklyn Nets
    game_hash[:home][:colors] #if correct it returns the team colours of that team
    
  elsif team_name == game_hash[:away][:team_name]
    game_hash[:away][:colors]
    
  else
    puts "Invalid team name"
  end

end


def team_names #returns the team names

# I use the .collect emunerable so it returns the :team_name values of the hash
 
 game_hash.collect do |team, team_stats| # You can use .map as well
   team_stats[:team_name]
 end
 
end






def player_numbers(team_name) #returns the player jersey numbers

 number = [] # Since the idea is to return all the jersey numbers of a team, I use an array to store the results
 
 game_hash.each do |team, team_stats| # I iterate through the game_hash
    if team_stats[:team_name] == team_name  #if the team_name has the correct argument
    
      team_stats[:players].each do |stats| # I use the .collect emunerable to pick out the number key
        number << stats[:number] # the player number is then pushed to the number array
      end
      
      number = team_stats[:players].collect do |stats| # I use the .collect emunerable to pick out the number key
        stats[:number] # the player number is then pushed to the number array
      end
    end
 end
 number # Returns the variable with the player jerseys
end




def player_stats(name) #returns all stats for a given player
 
 all_stats = 0 #Empty Variable to return at the end
 
 game_hash.each do |team, team_stats| 
   team_stats[:players].each do |stats|
     if stats[:name] == name
        # Had to delete the name key because otherwise the code doesnt work since it wants all the stats except the name of the player
       all_stats = stats
     end
   end
 end
 all_stats
end


def big_shoe_rebounds #returns the number of rebounds of the player with the biggest shoe size
  biggest_shoe = 0 # Two variables are needed
  rebounds = 0 
  
  game_hash.each do |team, team_stats|
    team_stats[:players].each do |stats|
      if stats[:shoe] > biggest_shoe 
        biggest_shoe = stats[:shoe]
        rebounds = stats[:rebounds]
      end
    end
  end
  rebounds 
end




=begin

def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
      team_data.each do |attribute, data|
        #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
        binding.pry
 
        #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
        data.each do |data_item|
            binding.pry
      end
    end
  end
end


=end










