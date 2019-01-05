require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  array = []
  array =  data[season][0]["name"].split(" ")
  array[0]

end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season,list|
    list.each do |info|
      info.each do |attribute, stuff|
        if attribute == "occupation"
          if stuff == occupation
             return info["name"]
          end
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  array = []
  data.each do |season,list|
    list.each do |info|
      info.each do |attribute, stuff|
        if attribute == "hometown"
          if stuff == hometown
             array<<info["name"]
          end
        end
      end
    end
  end
  return array.length
end

def get_occupation(data, hometown)
  # code here
  data.each do |season,list|
    list.each do |info|
      info.each do |attribute, stuff|
        if attribute == "hometown"
          if stuff == hometown
             return info["occupation"]
          end
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  array = []
  number = 0
  num = 0
  data[season].each do |list|
      list.each do |attribute, stuff|
        if attribute == "age"
            number += stuff.to_i
             array<<stuff
        end
      end
    end
    divider= array.size
  avg = number/divider
  return avg.round(0)
end
