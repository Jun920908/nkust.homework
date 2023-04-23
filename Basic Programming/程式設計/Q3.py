class student:
    def __init__(self,na,nr) :
        self.na=na
        self.nr=nr
    def getGPA(self):
        if self.getGPA>=80:
            return 4   
        elif 70<self.getGPA<79 :
            return 3
        elif 60<self.getGPA<69:
            return 2
        else:
            return 0  
stu=student("Tom",59)
print(stu.getGPA)                  