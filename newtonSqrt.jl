# The following function iteratively calculates the square root of a number

# Adjust the margin to increase the precision of the square root
small_error_margin = 10^(-5) 

function newton_sqrt(input, error_margin=small_error_margin, guess=input / 2) # a=input/2 is the default value of `a`
  # The infinity assignment guarantees that e will be bigger than error_margin
  e = Inf

  # The loop will keep iterating until the error e is smaller than error_margin
  while e > error_margin

    # if guess is bigger than the true sqrt, input/guess will be less than sqrt, 
    # so their avg will get closer and closer to the sqrt of input 
    avg = (guess + input/guess)/2.0
    e = convert(Float64, abs(avg - guess))
    println(e)
    guess = avg
  end
    print("""
    The square root of $input is $guess
    """)
end
 
# Some examples
newton_sqrt(9)
newton_sqrt(25)