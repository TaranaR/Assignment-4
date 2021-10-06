var a=[Int]()
var temp:Int
var t:Int=0

print("Enter number of elements")
var n=Int(readLine() ?? "0") ?? 0
for i in 0...n-1{
  let no=Int(readLine() ?? "0") ?? 0
  a.append(no)
}

var cnt=a.count
for i in 1..<cnt{
    if(a[0] == a[i]){
      t += 1
    }
}
if t == cnt-1{
  print("Not Found")
}
else{
  for i in 0...cnt-2{
    for j in i+1..<cnt{
      if(a[i]==a[j]){
        a.remove(at:j)
        cnt=a.count
      }
    }
  }
  for i in 0..<cnt{
    for j in i..<cnt{
      if(a[i]>a[j]){
        temp=a[i]
        a[i]=a[j]
        a[j]=temp
      }
    }
  }
  let slast=a[cnt-2]
  print("Second Largest number is::",slast)
}
