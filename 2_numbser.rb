# 3.4 Representing Rational Numbers
require 'rational'
rational = Rational(2, 3)            # => (2/3)
rational.to_f                        # => 0.6666666666666666
rational * 100                       # => (200/3)
rational * 100 / 42                  # => (100/63)
10 + Rational(2,3)                   # => (32/3)

# STOP HERE