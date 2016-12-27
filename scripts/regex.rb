string = "The quick brown 12 foxes jumped over the lazy 10 dogs"

p string =~ /quick/

p string =~ /z/ ? "Valid" : "Invalid"

p string =~ /Z/ ? "Valid" : "Invalid"

p string =~ /Z/i ? "Valid" : "Invalid"

p string.to_enum(:scan, /\d+/).map {Regexp.last_match}