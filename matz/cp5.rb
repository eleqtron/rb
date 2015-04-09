#4.upto(6) {|x| p x}
#3.times{|x| p x }
#0.step(1, 0.20) {|x| p x}

def sequence(n,m,c)
  i = 0
  while i < n
    yield m*i + c
    i += 1
  end
end

sequence(3,5,1){|x| p x}