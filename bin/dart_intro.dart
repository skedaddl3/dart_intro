/*
  To sum up what i've learned at Section 2 of the Dart and Flutter: The Complete Developer's Guide
  I implemented Object Oriented Programming in Dart, String Interpolation, Classes & Constructor
*/

void main() {
  var person = new Person('Dids Irwyn', 'Tome', 'Reyes');

  person.printInfo();
  person.address = 'Caloocan City, Philippines';
  person.dispAddress(); // Call Function to Display Address
  person.age = 21;

  print(person.dispAge()); // Another method to Display a return value

  // String Interpolation
  var strInterpolation = 'String Interpolation';

  print('Length of the variable strInterpolation: ${strInterpolation.length}');
}

class Person {
  late String firstName, middleInitial, lastName, address;
  late int age;

  Person(this.firstName, this.middleInitial, this.lastName);

  // Dynamic function allows non-null value
  dispAddress() {
    print('From ' + address);
  }

  dispAge() {
    // since Dart doesn't support multiple return values
    // I returned an array :D
    return [age, "years old"];
  }

  printInfo() {
    print('My name is ' + firstName + ' ' + middleInitial + ' ' + lastName);
  }
}
