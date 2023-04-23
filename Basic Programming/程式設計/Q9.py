class account:
    def __init__(self,int):
        self.money=int
    def deposit(self,number):
        self.money=self.money+number
        self.balance()
    def withdraw(self,number):
        self.money=self.money-number
        self.balance()    
    def balance(self):
        print("Money=",self.money)
    def addinterest(self,number):
        self.money=self.money+number
        self.balance() 
a1=account(100)
a1.balance()
a1.deposit(1000)
a1.balance()              