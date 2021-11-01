require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash.each do |season, hash|
    if season == :summer 
      hash.each do |key, value|
        if key == :fourth_of_july
          return value[1]
        end
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, hash|
    if season == :winter 
      hash.each do |key, value|
        if key == :christmas || key == :new_years
          value << supply
        end
      end
    end
  end
holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, hash|
    if season == :spring
      hash.each do |key, value|
        if key == :memorial_day
          value << supply
        end
      end
    end
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash.each do |season, hash|
    if season == :winter
      return hash.values.flatten
    end
  end
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, hash|
    puts season.to_s.capitalize + ':'
    hash.each do |holiday, value|
      holiday = holiday.to_s.split('_')
      holiday.each_with_index do |word, index|
        holiday[index] = word.capitalize
      end
      puts "  #{holiday.join(' ')}: #{value.join(', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays = []
  holiday_hash.each do |season, hash|
    hash.each do |holiday, activity|
      if activity.include?('BBQ')
        holidays << holiday
      end
    end
  end
  holidays
end
