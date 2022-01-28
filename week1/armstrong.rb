# An n-digit number that is the sum of the nth powers of its digits is called an n-narcissistic number. It is also known as an Armstrong number.
#
# For example,
# 153 = 1^3 + 5^3 + 3^3
#
# `n` is a number provided to you as input.
#
# Your output should be `true` if the number is an Armstrong number
# and `false` otherwise.

def armstrong_number(n)
    puts "Enter the number to be checked for armstrong number"
    temp=n
    num=temp.to_s
    k=num.length-1
    ans=0
    i=0
    while i<k
        ans=ans + ((num[i].to_i)**k)
        i+=1
    end
    if(temp.to_i==ans)
       return true
    else
       return false
    end
end
