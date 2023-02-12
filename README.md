# Prime Numbers

## Task

The goal of this lab is to create a simple shell script that calculates all the prime numbers between 1 and whatever number the user inputs.

A prime number is simply any number that can only be divided by 1 and itself.

In order to create a script that gets all the prime numbers, you can use the `%` (modulo) operator. Since this operator returns the remainder of an operation, you can simply check if `n` divided by every number before it greater than one is NOT equal to 0. If at any point the remainder is 0, then we know that `n` is divisible by something other than 1 or itself, in which case, it is NOT a prime number.

For example, if we want to test whether 10 is a prime number or not, we can modulo 10 by every number before it greater than 1. Since `10 % 2` and `10 % 5` both return 0 (there is no remainder), we know that 10 is NOT a prime number.

Likewise, if we try using modulo on 11 for `1 > x > 11`, every single result will return with a remainder. Ergo, `11` is a prime number.

> Hint: You are going to be using two `for` loops, one inside the other. One iterates from 1 to the user-inputted number, and then inside that one, another iterates from 1 to the current number in the `for` loop, testing each number along the way.

Note that there are more efficient ways of calculating prime numbers; this is simply an exercise for learning purposes.

## Pseudocode

Once again, here is some pseudocode to help get you started:

```bash
# Read user input
# Iterate from 2 to user-inputted number
  # Iterate from 2 to i
    # If i is currently divisible by j, then we know it's NOT a prime number
  # Once we're done/broken out of the loop, if i hasn't been divisible by anything, we know it's prime
```

## Output

Output should be a list of prime numbers, each on a newline.

```bash
Enter max number: 100
2
3
5
7
11
13
17
19
23
29
31
37
41
43
47
53
59
61
67
71
73
79
83
89
97
```