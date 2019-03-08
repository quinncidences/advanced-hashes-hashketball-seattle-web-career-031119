require "pry"

def game_hash
  game_hash = {
    :home => {
        :team_name => "Brooklyn Nets",
        :colors => ["Black", "White"],
        :players => {
            "Alan Anderson" => {
                :number => 0,
                :shoe => 16,
                :points => 22,
                :rebounds => 12,
                :assists => 12,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 1
          },
            "Reggie Evans" => {
                :number => 30,
                :shoe => 14,
                :points => 12,
                :rebounds => 12,
                :assists => 12,
                :steals => 12,
                :blocks => 12,
                :slam_dunks => 7
          },
            "Brook Lopez" => {
                :number => 11,
                :shoe => 17,
                :points => 17,
                :rebounds => 19,
                :assists => 10,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 15
          },
            "Mason Plumlee" => {
                :number => 1,
                :shoe => 19,
                :points => 26,
                :rebounds => 12,
                :assists => 6,
                :steals => 3,
                :blocks => 8,
                :slam_dunks => 5
          },
            "Jason Terry" => {
            :number => 31,
            :shoe => 15,
            :points => 19,
            :rebounds => 2,
            :assists => 2,
            :steals => 4,
            :blocks => 11,
            :slam_dunks => 1
          }
        }
      },

      :away => {
          :team_name => "Charlotte Hornets",
          :colors => ["Turquoise", "Purple"],
          :players => {
              "Jeff Adrien" => {
                  :number => 4,
                  :shoe => 18,
                  :points => 10,
                  :rebounds => 1,
                  :assists => 1,
                  :steals => 2,
                  :blocks => 7,
                  :slam_dunks => 2
            },
              "Bismak Biyombo" => {
                  :number => 0,
                  :shoe => 16,
                  :points => 12,
                  :rebounds => 4,
                  :assists => 7,
                  :steals => 7,
                  :blocks => 15,
                  :slam_dunks => 10
            },
              "DeSagna Diop" => {
                  :number => 2,
                  :shoe => 14,
                  :points => 24,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 4,
                  :blocks => 5,
                  :slam_dunks => 5
            },
              "Ben Gordon" => {
                  :number => 8,
                  :shoe => 15,
                  :points => 33,
                  :rebounds => 3,
                  :assists => 2,
                  :steals => 1,
                  :blocks => 1,
                  :slam_dunks => 0
            },
              "Brendan Haywood" => {
                  :number => 33,
                  :shoe => 15,
                  :points => 6,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 22,
                  :blocks => 5,
                  :slam_dunks => 12
            }
        }
      }
    }
end
# team_data[:team_name][:players]
def num_points_scored(player_name)
  array = []
  game_hash.each do |location, team_data|
    team_data[:players].each do |person, data|
      binding.pry
            if person == player_name && x == :points
              array.push(y)
            end
          end
        end
      end
    end
  end
  return array[0]
end


def shoe_size(player_name)
  array = []
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |person, data|
          data.each do |x, y|
            if person == player_name && x == :shoe
              array.push(y)
            end
          end
        end
      end
    end
  end
  return array[0]
end

def team_colors(team_name)
  array = []
    game_hash.each do |location, team_data|
      team_data.each do |attribute, data|
        if team_data[attribute] == team_name
          return team_data[:colors]
        end
      end
      end
  end

#    if game[:home][:teamname] == team_name
#      return game_hash[:home][:colors]
#    if game_[:home][:teamname] == team_name
#      return game_hash[:home][:colors]
#      end
#    end
#  end


def team_names
array = []
    array << game_hash[:home][:team_name]
    array << game_hash[:away][:team_name]
    return array
  end

  def player_stats(player_name)
    game_hash.each do |location, team_data|
      team_data.each do |attribute, data|
        if attribute == :players
          data.each do |person, data|
            if person == player_name
            return data
          end
        end
      end
    end
  end
end

def player_numbers(team_name)
  array = []
  if game_hash[:home][:team_name] == team_name
    game_hash[:home][:players].each do |name, stats|
      array << stats[:number]
    end
  else
    game_hash[:away][:team_name] == team_name
      game_hash[:away][:players].each do |name, stats|
        array << stats[:number]
  end
end
  return array
end


#game_hash.each do |location, team_data|
#  team_data.each do |attribute, data|
#    if attribute == :players
#      data.each do |person, data|
#        data.each do |x, y|
#            array.push(y)
#          end
#        end
#      end
#    end
#  end


def big_shoe_rebounds
  constant_shoe = 0
  highest_rebounds = 0
  game_hash.each do |location, team_data|
    team_data[:players].each do |key, info|
      if info[:shoe] > constant_shoe
        constant_shoe = info[:shoe]
        highest_rebounds = info[:rebounds]
      end
    end
  end
  highest_rebounds
end
