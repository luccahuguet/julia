# The following function iteratively calculates the square root of a number

small_error_margin = 10^(-5)

function newton_sqrt(input, error_margin=small_error_margin, guess=input / 2) # a=input/2 is the default value of `a`
  # The infinity assignment guarantees that e will be bigger than error_margin
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