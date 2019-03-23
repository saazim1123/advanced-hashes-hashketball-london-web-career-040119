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


def num_points_scored(name)
  points = 0
  game_hash.each do |team, team_stats|
    
    team_stats[:players].each do |stats|
      if stats[:name] == name
        points = stats[:points]
      end
    end
  end
  points
end

def shoe_size(name)
shoe_size = 0 

game_hash.each do |team, team_stats|
  
  team_stats[:players].each do |stats|
    if stats[:name] == name
      shoe_size = stats[:shoe]
    end
  end
end
shoe_size
  

end


def team_colors(team_name)
  
  if team_name == game_hash[:home][:team_name]
    game_hash[:home][:colors]
    
  else team_name == game_hash[:away][:team_name]
    game_hash[:away][:colors]
    
  end
end

def team_names #returns the team names
  game_hash.collect do |team, team_stats|
    team_stats[:team_name]
  end
  
end




def player_numbers(team_name) #returns the player jersey numbers
  player_numbers = []
  game_hash.each do |team, team_stats|
    if team_stats[:team_name] == team_name
      team_stats[:players].each do |player|
        player.each do |key, number|
          if key == :number
            player_numbers << number
          end
        end
      end
    end
  end
  player_numbers
end




def player_stats(name) #returns all stats for a given player
  player_stats = 0
  game_hash.each do |team, team_stats|
    team_stats[:players].each do |stats|
      if stats[:name] == name
        stats.delete(:name)
        player_stats = stats
      end
    end
  end
  player_stats
end


def big_shoe_rebounds #returns the number of rebounds of the player with the biggest shoe size
  biggest_shoe = 0 
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










