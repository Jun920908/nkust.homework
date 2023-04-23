# Composition
class car:
    def __init__(self,size):
        self.engine=Engine(size)
        self.tire=Tire(1)
        self.tire=Tire(2)
        self.tire=Tire(3)
        self.tire=Tire(4)
class Engine :
    def __init__(self,size):    
        self.size=size
class Tire:
    def __init__(self,position):        
        self.position=position
car1=car(2000)        