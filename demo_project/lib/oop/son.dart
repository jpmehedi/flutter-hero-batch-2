import 'package:demo_project/oop/father.dart';

class Son extends Father {

  var a;
  int addTwo(int a, int b){
    return this.a + b;
  }


  @override
  String display(String data) {
    return super.display(data);
  }

}