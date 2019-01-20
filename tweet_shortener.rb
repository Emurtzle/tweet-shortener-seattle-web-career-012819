def word_substituter (string)
  short_list = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    }

    new_array = []

    array = string.split.each do |word|
      changed = false
      short_list.keys.each do |key|
        if word == key
          new_array << short_list[word]
          changed = true
          break
        end
      end
      if changed == false
        new_array << word
      end
    end
    new_array.flatten.join(" ")
end

def bulk_tweet_shortener (array)
  array.each do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener (string)
  if string.length > 140
    return word_substituter(string)
  else
    return string
  end
end
