void main() {
  var hazim = MarketingA();
  hazim.salaryPerYear();
  hazim.id = 1;

  var laila = MarketingB();
  laila.salaryPerYear();
  laila.id = 2;

  var alaa = MarketingC();
  alaa.salaryPerYear();
  alaa.id = 3;

  var nourhan = FlutterA();
  nourhan.salaryPerYear();
  nourhan.id = 4;

  var belal = FlutterB();
  belal.salaryPerYear();
  belal.id = 5;


  var somaia = UiUxA();
  somaia.salaryPerYear();
  somaia.id = 6;

  var tassnem = UiUxB();
  tassnem.salaryPerYear();
  tassnem.id = 7;
}

abstract class Employee {
  var name = '';
  var id = 0;
  var yearExperience = 0;
  var salary = 2000;

  // to calculate every employee salary per year and his job .. will override in each job class
  void salaryPerYear(){}
}

// marketing team - - three classes for every year experience
class Marketing extends Employee{
  @override
  var salary = 3000;
}

class MarketingA extends Marketing{
  @override
  var yearExperience = 2;

  @override
  void salaryPerYear(){
    print(salary * yearExperience);
  }
}

class MarketingB extends Marketing{
  @override
  var yearExperience = 5;
  @override
  void salaryPerYear() {
    print(yearExperience * salary);
  }
}

class MarketingC extends Marketing{
  @override
  var yearExperience = 7;
  @override
  void salaryPerYear() {
    print(yearExperience * salary);
  }
}

// flutter team - - two classes for every year experience
class Flutter extends Employee{
  @override
  var salary = 7000;
}

class FlutterA extends Flutter{
  @override
  var yearExperience = 2;
  @override
  void salaryPerYear() {
    print(yearExperience * salary);
  }
}

class FlutterB extends Flutter{
  @override
  var yearExperience = 5;
  @override
  void salaryPerYear() {
    print(yearExperience * salary);
  }
}

// UiUx team - - two classes for every year experience
class UiUx extends Employee{
  @override
  var salary = 5000;
}

class UiUxA extends UiUx{
  @override
  var yearExperience = 2;
  @override
  void salaryPerYear() {
    print(yearExperience * salary);
  }
}

class UiUxB extends UiUx{
  @override
  var yearExperience = 5;
  @override
  void salaryPerYear() {
    print(yearExperience * salary);
  }
}