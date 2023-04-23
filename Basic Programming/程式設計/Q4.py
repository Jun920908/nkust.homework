import math
class Calculator:
    def __init__(self, a, b):
        self.n1 = a
        self.n2 = b

    def add(self):
        return self.n1+self.n2

    def gcd(self):
        return math.gcd(self.n1, self.n2)

    # >= Python 3.9
    # def lcm(self):
    #     return math.lcm(self.n1,self.n2)

    def power(self):
        return math.pow(self.n1, self.n2)


c0 = Calculator(4, 10)
print("add: ", c0.add())
print("gcd: ", c0.gcd())
# print("lcm: ", c0.lcm())
print("power:", c0.power())
