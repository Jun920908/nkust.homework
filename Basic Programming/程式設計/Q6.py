import math
#pi => math.pi
class Sphere:
    def __init__(self, r):
        self.rad=r
    def volume(self):
        return (4/3)*math.pi*math.pow(self.rad,3)
    def surface_area(self):
        return 4*math.pi*self.rad*self.rad
    def __repr__(self):
        return f'Sphere object, rad={self.rad}'
    def __str__(self):
        return f'Sphere object, rad={self.rad},volume={self.volume()},surface_area={self.surface_area()}'
    
s0 = Sphere(2)
print("volume: ",s0.volume())
print("surface: ", s0.surface_area())
print(s0)
        
    
