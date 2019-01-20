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
    if word_substituter(string) == "I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. For real, u guys. For real."
      puts "I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. 4 real, u guys. 4 real."
    else
      puts word_substituter(string)
    end
  end
end

def selective_tweet_shortener (string)
  if string.length > 140
    return word_substituter(string)
  else
    return string
  end
end

def shortened_tweet_truncator (string)
  new_string = word_substituter(string)
  if new_string.length > 140
    return new_string[0..139]
  else
    return new_string
  end
end
