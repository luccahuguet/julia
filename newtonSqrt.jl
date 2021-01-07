function newton_sqrt(input, error_margin=(10^(-10)), guess=input / 2) # a=input/2 is the default value of `a`
  e = Inf
  while e > error_margin
    avg = (guess + input/guess)/2.0
    e = convert(Float64, abs(avg - guess))
    guess = avg
  end
    print("""
    The square root of $input is $guess
    """)
end

newton_sqrt(9)
newton_sqrt(25)