import 'package:beginning_flutter_with_dart/nested_loop.dart';
import 'package:beginning_flutter_with_dart/constructor.dart';
import 'package:beginning_flutter_with_dart/class_coupling.dart';
import 'package:beginning_flutter_with_dart/getters_and_setters.dart';
import 'package:beginning_flutter_with_dart/extension.dart';
class LambdaCode {
  Function addingTwoNumbers = (int x, int y){
    var sum = x + y;
    return sum;
  };
  Function divideByFour =(int num)=> num ~/4;
}

void main(List<String> arguments){
  var fatherBear = Bear(6, 10);
  fatherBear.weightGain = fatherBear.numberOfFish * fatherBear.hoursOfSleep;
  print("Father bear eats ${fatherBear.numberOfFish}, fish. and he sleeps for ${fatherBear.hoursOfSleep}, hours");
  print("Fatherbear has gained ${fatherBear.weightGaining(fatherBear.weightGain)} pounds of weight");

  var newURL = CheckHttps('http://example.com');

  print('The new URL ${newURL.urlCheck} is insecure');

  var myConnect = myConnection("MySQL", "localhost", "root");

  print(myConnect);

  var myObject = myClass('Sanjib');
  myObject.setName = "Sanjib";
  print(myObject.getName);


  labelsLoop();

  print(LambdaCode().addingTwoNumbers(12,47));
  print(LambdaCode().divideByFour(56));


  var cat = Cat();
  cat.name = "Meaow";
  cat.showName();
  cat.eat();
  var anotherCat = Cat.namedCatConstructor();


}

 

 