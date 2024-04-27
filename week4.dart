import 'dart:io';

// Define an interface
abstract class Playable {
  void play();
}

// Define a base class
class Instrument {
  void tune() {
    print('Tuning the instrument');
  }
}

// Define a class that implements an interface and overrides a method
class Guitar extends Instrument implements Playable {
  @override
  void play() {
    print('Playing the guitar');
  }
}

// Define a class that demonstrates inheritance
class Animal {
  String name;

  Animal(this.name);

  void eat() {
    print('$name is eating');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void eat() {
    print('$name is eating dog food');
  }

  void bark() {
    print('Woof!');
  }
}

// Define a method to read data from a file and initialize an instance of a class
Animal createAnimalFromFile(String filename) {
  File file = File(filename);
  List<String> lines = file.readAsLinesSync();
  if (lines.isNotEmpty) {
    return Dog(lines[0]); // Assume the first line contains the name of the dog
  } else {
    throw Exception('File is empty');
  }
}

// Define a method that demonstrates the use of a loop
void demonstrateLoop() {
  for (int i = 0; i < 5; i++) {
    print('Count: $i');
  }
}

void main() {
  // Demonstrate interface implementation and method overriding
  Guitar guitar = Guitar();
  guitar.tune();
  guitar.play();

  // Demonstrate inheritance
  Dog dog = Dog('Buddy');
  dog.eat();
  dog.bark();

  // Demonstrate initializing instance from file
  try {
    Animal animal = createAnimalFromFile('data.txt');
    print('Created animal from file: ${animal.name}');
  } catch (e) {
    print('Error: $e');
  }

  // Demonstrate the use of a loop
  demonstrateLoop();
}
