



import 'package:demo_project/oop/class_three.dart';

void main(){


  // ClassThree classThree = ClassThree();

  ClassThree.add();
  ClassThree.name;

  List<int> items = <int>[4, 8, 6];
  Map<String, dynamic> profile = <String, dynamic>{
    "name": "Mehedi",
    "age": 75
  };


  // Son son = Son();
  // print(son.age);

  // ClassOne classOne = ClassOne(4, 60);
  // classOne.showData();
  // print(son.display("Hello"));




  // const double  pi = 3.141;

  // final int a;

  // a = 20;

  // const int b = 20;
  //  b = 40;


  // final DateTime dateTime = DateTime.now();

  // const DateTime dateTime = DateTime.now();

  // print(dateTime);

  // ClassOne classOne = ClassOne();

  // classOne.add();




// try{
//   int div = 10 ~/ 0;
//   print(div);
// }catch(exception){
//   print(exception);
// }finally{
//   print("Must be execute");
// }


print("Before Execute");

getData();

print("After Execute");












}


 Future getData()async{

  await Future.delayed(Duration(seconds: 5));

  print("Execcute");
}