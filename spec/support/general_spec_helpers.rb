def random_string
  (0...24).map{ ('a'..'z').to_a[rand(26)] }.join
end

def random_time
  (Time.now + random_integer * 60).utc
end

def random_integer(max=9999)
  rand(max)
end

def random_date
  rt = random_time
  Date.new(rt.year, rt.month, rt.day)
end

def random_email
  "#{random_string}@#{random_domain}"
end

def random_domain
  "#{random_string}.com"
end

def random_url
  "http://www.#{random_domain}/#{random_string}"
end

def random_symbol
  random_string.to_sym
end