void main() {

  // object from Amphibians that extend from animals
  var frog = Amphibians();
  frog.color = 'Green';
  frog.hasBackBone = true;
  frog.size = 'small';
  frog.eating();

  // object from Amphibians that extend from animals
  var wizard = Amphibians();
  wizard.color = 'Multi colors';
  wizard.hasBackBone = false;

  // object from Mammals that extend from animals
  var lion = Mammals();
  lion.size = 'big';
  lion.color = 'Brown';
  lion.hasBackBone = true;

  // object from Mammals that extend from animals
  var dog = Mammals();
  dog.size = 'small';
  dog.living();

  // object from fish that extend from animals
  var dolphin = Fish();
  dolphin.numberOfArms = 2;
  dolphin.size = 'big';
  dolphin.color = 'Grey';
  dolphin.hasBackBone = false;

  // object from Mammals that extend from animals
  var shark = Fish();
  shark.numberOfArms = 0;
  shark.color = 'white';
}

class Animal {
  var numberOfLimbs = 4;
  var color = '';
  var size = '';
  var hasBackBone = true;

  void eating(){
    print('Animals eat');
  }
}
// Amphibians class that extend from animals class with some changes
class Amphibians extends Animal {

  @override
  void eating() {
    print('Amphibians eat insects');
  }
}
// Mammals class that extend from animals class with some changes
class Mammals extends Animal {

  @override
  void eating(){
    print('Mammals eat plants Other Animals');
  }

  void living() {
    print('Mammals live in Earth');
  }
}
// Fish class that extend from animals class with some changes
class Fish extends Animal {
  var numberOfArms = 0;

  @override
  void eating(){
    print('big Fish eats small fish ');
  }
}