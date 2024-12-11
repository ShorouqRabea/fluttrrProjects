/// Vehicle System///
import 'dart:io';

// class vehicle
class vehicle {
  String? make;
  String? model;
  int? year;
  // constructor is called when building the object
  vehicle(String makeinput, String modelInput, int yearInput) {
    make = makeinput;
    model = modelInput;
    year = yearInput;
  }
  // function to print vehicle details
  void printdetails() {
    Map<String, dynamic> vehicleDatails = {
      'Make': make,
      'model': model,
      'year': year
    };
    print(vehicleDatails);
  }
}

void main() {
  // the user enter make of object1, model of object1 and year of object1
  print('Enter make of object1');
  String makeObject1 = stdin.readLineSync()!;
  print('Enter model of object1');
  String modelObject1 = stdin.readLineSync()!;
  print('Enter year of object1');
  int yearObject1 = int.parse(stdin.readLineSync()!);
  // the first object
  vehicle vehicle1 = vehicle(makeObject1, modelObject1, yearObject1);
  // calling the printdetails function
  vehicle1.printdetails();

  // the user enter make of object2, model of object2 and year of object2
  print('Enter make of object2');
  String makeObject2 = stdin.readLineSync()!;
  print('Enter model of object2');
  String modelObject2 = stdin.readLineSync()!;
  print('Enter year of object2');
  int yearObject2 = int.parse(stdin.readLineSync()!);
  // the second object
  vehicle vehicle2 = vehicle(makeObject2, modelObject2, yearObject2);
  // calling the printdetails function
  vehicle2.printdetails();
  // the user enter make of object3, model of object3 and year of object3

  print('Enter make of object3');
  String makeObject3 = stdin.readLineSync()!;
  print('Enter of model object3');
  String modelObject3 = stdin.readLineSync()!;
  print('Enter year of object3');
  int yearObject3 = int.parse(stdin.readLineSync()!);
  // the third object
  vehicle vehicle3 = vehicle(makeObject3, modelObject3, yearObject3);
  // calling the printdetails function
  vehicle3.printdetails();
}
