# Write your code here!
require "pry"

def game_hash
  {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => [
      {
      :name => "Alan Anderson",
      :number => 0,
      :shoe => 16,
      :points => 22,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
      },
      {
      :name => "Reggie Evans",
      :number => 30,
      :shoe => 14,
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 12,
      :blocks => 12,
      :slam_dunks => 7
      },
      {
      :name => "Brook Lopez",
      :number => 11,
      :shoe => 17,
      :points => 17,
      :rebounds => 19,
      :assists => 10,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 15
      },
      {
      :name => "Mason Plumlee",
      :number => 1,
      :shoe => 19,
      :points => 26,
      :rebounds => 12,
      :assists => 6,
      :steals => 3,
      :blocks => 8,
      :slam_dunks => 5
      },
      {
      :name => "Jason Terry",
      :number => 31,
      :shoe => 15,
      :points => 19,
      :rebounds => 2,
      :assists => 2,
      :steals => 4,
      :blocks => 11,
      :slam_dunks => 1
      }
    ]
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => [
      {
      :name => "Jeff Adrien",
      :number => 4,
      :shoe => 18,
      :points => 10,
      :rebounds => 1,
      :assists => 1,
      :steals => 2,
      :blocks => 7,
      :slam_dunks => 2
      },
      {
      :name => "Bismak Biyombo",
      :number => 0,
      :shoe => 16,
      :points => 12,
      :rebounds => 4,
      :assists => 7,
      :steals => 7,
      :blocks => 15,
      :slam_dunks => 10
      },
      {
      :name => "DeSagna Diop",
      :number => 2,
      :shoe => 14,
      :points => 24,
      :rebounds => 12,
      :assists => 12,
      :steals => 4,
      :blocks => 5,
      :slam_dunks => 5
      },
      {
      :name => "Ben Gordon",
      :number => 8,
      :shoe => 15,
      :points => 33,
      :rebounds => 3,
      :assists => 2,
      :steals => 1,
      :blocks => 1,
      :slam_dunks => 0
      },
      {
      :name => "Brendan Haywood",
      :number => 33,
      :shoe => 15,
      :points => 6,
      :rebounds => 12,
      :assists => 12,
      :steals => 22,
      :blocks => 5,
      :slam_dunks => 12
      }
    ]
  }
}
end


def num_points_scored(name)
  game_hash.each do |team, details|
    players = details[:players]
    players.each do |player_details|
    if player_details[:name] == name
     return player_details[:points]
    end
  end
end
end


def shoe_size(name)
  game_hash.each do |team, details|
    players = details[:players]
    players.each do |player_details|
      if player_details[:name] == name
        return player_details[:shoe]
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |team, details|
    if details[:team_name] == team_name
      return details[:colors].flatten
    end
  end
end

def team_names
  game_hash.collect do |team, details|
    details[:team_name]
  end
end

def player_numbers(team_name)
  list_of_numbers =[]
  game_hash.each do |team, details|
    if details[:team_name] == team_name
      players = details[:players]
      players.each do |player|
        player.each do |key, value|
          if key == :number
            list_of_numbers << value
          end
        end 
      end
    end
  end
  list_of_numbers
end


def player_stats(player_name)
  player_stats ={}
  game_hash.each do |team, team_details|
    team_details[:players].each do |stats|

      if stats[:name] == player_name
        stats.delete(:name)
        player_stats = stats
      end
    end
  end
  player_stats
end
  


def big_shoe_rebounds
  largest_size = 0 
  number_of_rebounds = 0 
  game_hash.each do |team, details|
    details[:players].each do |player_detail|
      if player_detail[:shoe] > largest_size
        largest_size = player_detail[:shoe]
        number_of_rebounds = player_detail[:rebounds]
      end 
    end 
  end 
  number_of_rebounds
end
  











