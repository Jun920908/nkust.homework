class Pizza:
    def __init__(self, size, cheese, pepperoni, ham):
        self.__size = size
        self.cheese = cheese
        self.pepperoni = pepperoni
        self.ham = ham

    def setSize(self, size):

        if size == "small" or size == "medium" or size == "large":
            self.__size = size
        else:
            print("wrong size")

    def getSize(self):
        return self.__size

    def calcCost(self):

        num_of_toppings = self.cheese + self.pepperoni + self.ham
        cost_of_toppings = 2 * num_of_toppings

        if self.__size == "small":
            return 10 + cost_of_toppings
        elif self.__size == "medium":
            return 12 + cost_of_toppings
        elif self.__size == "large":
            return 14 + cost_of_toppings

    def getDescription(self):
        description = f'{self.__size}, cheese: {self.cheese}, pepperoni: {self.pepperoni}, ham: {self.ham}'
        return description


pizze = Pizza("small", 2, 2, 2)
print(pizze.getDescription())
