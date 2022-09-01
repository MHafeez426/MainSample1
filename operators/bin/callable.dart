class A{
 int call(int a){
    return 100+a;
  }
}
void main(){
  A obj = A();
  //var data = obj();
  print(obj(90));
}

