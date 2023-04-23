class person:
    def __init__(self,h,n,w):
        self.height=h
        self.name=n
        self.weapon=w
    def printname(self):
        print(self.name)
    def printweapon(self):
        print(self.weapon)
    def __str__(self) :
        return f'{self.name} and {self.weapon}'
    def __eq__(self,other):
        if self.name== other.name:
           return True
        else:
            return False
Master=person("180","Pig","no")
print(Master)
Monkey=person("160","Beef","gold")
print(Monkey)
if Master==Monkey:
    print(True)
else:
    print(False)                  
                