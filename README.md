# flutter_academind

A new Flutter project.

## Getting Started

프로젝트 생성

```bash
$ flutter create flutter_academind
```

시뮬레이터 실행

```bash
$ open -a Simulator
```

코드 실행

```
$ flutter run
```

## dart

```dart
class Person {
    String name;
    int age;

    Person(String inputName, int age) {
        name = inputName;
        this.age = age;
    }
}

class Person2 {
    String name;
    int age;

    Person2({@required String inputName, int age = 30}) {
        name = inputName;
        this.age = age;
    }
}

class Person3 {
    String name;
    int age;

    Person3({this.name, this.age});
}

void main() {
    var p1 = Person('Max', 30);
    var p2_1 = Person2(inputName: 'Max', age: 30);
    var p2_2 = Person2(age: 30, inputName: 'Max');
    var p3 = Person3({name: 'Max', age: 30});
}
```

- private
  https://dart.dev/guides/language/effective-dart/design#libraries
