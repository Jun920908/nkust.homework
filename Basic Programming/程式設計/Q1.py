class windows:
    def __init__(self,w=10,h=5):
        self.width=w
        self.height=h


w0=windows()
print("width=",w0.width,"height=",w0.height)

w0.width=8
w0.height=12
print("width=",w0.width,"height=",w0.height)

w1=windows(16,7)
print("width=",w1.width,"height=",w1.height)
class windows:
    def __init__(self,w=12,h=8):
        self.width=w
        self.height=h
    def getarea(self):
        return self.width*self.height

w0=windows()
print("w0",w0.getarea())

w1=windows(16,7)
print("w1",w1.getarea())
