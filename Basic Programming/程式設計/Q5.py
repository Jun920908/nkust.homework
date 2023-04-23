class Pet:
    def __init__(self,na,age,color) :
        self.na=na
        self.age=age
        self.color=color
cat=[]
for time in range(3):
    cat.append(cat(input("請輸入寵物名:"),eval(input("請輸入年齡:")),input("請輸入顏色:")))
maxcats=20
mincats=0
for x in cat:
    if (x.age>maxcats):
        maxname=x.name
        maxcats=x.age
    if(x.age<mincats):
        minname=x.name
        mincats=x.age
print("{}是年紀最大者 年紀{}".format(maxname,maxcats))
print("{}是年紀最小者 年紀{}".format(minname,mincats))            
