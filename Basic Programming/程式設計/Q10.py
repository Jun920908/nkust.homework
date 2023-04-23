class Matrix:

    def __init__(self, row, column):
        self.__row = row
        self.__column = column
        self.__arr = [[0 for i in range(self.__column)]
                      for j in range(self.__row)]

    def getRows(self):
        return self.__row

    def getColumns(self):
        return self.__column

    def setElement(self, row, column, value):
        self.__arr[row][column] = value

    def getElement(self, row, column):
        return self.__arr[row][column]

    def add(self, other):
        if (self.__column == other.getColumns()) and (self.__row == other.getRows()):
            print("add")
        else:
            print("Matrices cannot be added")


matrix1 = Matrix(3, 3)
# print(matrix1.getRows())
# print(matrix1.getColumns())
# matrix1.setElement(1, 1, 4)
# print(matrix1.getElement(1, 1))
matrix2 = Matrix(3, 3)

matrix1.add(matrix2)
