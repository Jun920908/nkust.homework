class BoundedStack:
    def __init__(self,size) :
        self.limit=size
        self.mystack=[]
    def push(self,text):
        if(len(self.mystack)<self.limit):
            self.mystack.append(text)
        else:
            print("stack-overflow")
    def pop(self):
        if(len(self.mystack)!=0):
            print(self.mystack.pop())
        else:
            print("stack-is-empty")
    def isEmpty (self):
        if(len(self.mystack)==0):
            print("stack-is-empty")
s0=BoundedStack(1)    
s0.push("123")
s0.push("abc")
s0.push("abc2")
s0.push("abc3")
s0.push("abc4")
s0.push("abc5")                                