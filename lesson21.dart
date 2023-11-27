// Задание 1
// Напишите класс BaseConverter для конвертации из градусов по Цельсию в
// Кельвины , Фаренгейты , и так далее. У класса должен быть метод convert, который
// и делает конвертацию.
// 1) Создать абстрактный класс Конвертер
// 2) Реализовать интерфейс (т.е. последующие классы имплентируются от Конвертера)

import 'dart:io';

// void main(List<String> args) {
//   // BaseConverter calvin = Calvin(celcium: 75);
//   // calvin.convert();

//   // Calvin farengeit = Farengeit(celcium: 77);
//   // farengeit.convert();

//   // Tiles tiles = Tiles(brand: 'EA', size_h: 80, size_w: 60, price: 25);
//   // tiles.getInfo();

//   // Children child = Children(firstName: 'Erlan', lastName: 'Attokurov', age: 20);
//   // child._infoChild();
//   // child.showInfo();

//   // Children children = Children('Marlen', 'Dastanov', 3);
//   // children._infoChild();
//   // children.showInfo();

//   // Soda soda = Soda(additive: 'limon');
//   // soda.show_my_drink();

//   // Worker worker =
//   //     Worker(name: "Erlan", surname: "Attokurov", rate: 12, days: 18);
//   // worker.getSalary();

//   // Worker erlan = Erlan(name: 'Erlan', surname: 'Attokurov', rate: 10, days: 20);
//   // erlan.getSalary2();

//   // Tunel tunel = Tunel(tunnelHeight: 10, tunnelWidth: 6, trainHeight: 9, trainWidth: 5);
//   // tunel.checkTunnel();

// }

abstract class BaseConverter {
  void convert();
}

class Calvin extends BaseConverter {
  double celcium;
  Calvin({
    required this.celcium,
  });

  @override
  void convert() {
    double calvin = celcium + 273.15;
    print('$celcium gradus  = $calvin Calvin');
  }
}

class Farengeit extends Calvin {
  @override
  Farengeit({required super.celcium});
  void convert() {
    double farengeit;
    farengeit = (celcium * 9 / 5) + 32;
    print('$celcium celcium = $farengeit farengeit');
  }
}

// Задание 2
// Создать класс Tiles (кафель), который будет содержать поля с открытым доступом:
// brand, size_h, size_w, price и метод класса getData(). В главной функции объявить
// пару объектов класса и внести данные в поля. Затем отобразить их, вызвав метод getData().

class Tiles {
  String brand;
  double size_h;
  double size_w;
  int price;

  Tiles({
    required this.brand,
    required this.size_h,
    required this.size_w,
    required this.price,
  });

  void getInfo() {
    print(
        ' brand: $brand\n size_h: $size_h cm\n size_w $size_w cm\n price: $price \$');
  }
}

// Задание 3
// Определить класс Children, который содержит такие поля (члены класса):
// закрытые – имя ребенка, фамилию и возраст , публичные – методы ввода данных
// и отображения их на экран. Объявить два объекта класса, внести данные и показать их.

// class Children {
//   String _firstName = "";
//   String _lastName =  "";
//   int _age = 0;

//   Children() {
//     stdout.write('Введите имя ребенка: ');
//     _firstName = stdin.readLineSync()!;

//     stdout.write('Введите фамилию ребенка: ');
//     _lastName = stdin.readLineSync()!;

//     stdout.write('Введите возраст ребенка: ');
//     _age = int.parse(stdin.readLineSync()!);
//   }
//   void showInfo() {
//     print('Имя: $_firstName');
//     print('Фамилия: $_lastName');
//     print('Возраст: $_age лет');
//   }
// }

class Children {
  String _firstName;
  String _lastName;
  int _age;

  Children(this._firstName, this._lastName, this._age);

  void _infoChild() {
    stdout.write('Введите имя ребенка: ');
    _firstName = stdin.readLineSync()!;

    stdout.write('Введите фамилию ребенка: ');
    _lastName = stdin.readLineSync()!;

    stdout.write('Введите возраст ребенка: ');
    _age = int.parse(stdin.readLineSync()!);
  }

  void showInfo() {
    print(' Имя: $_firstName');
    print('Фамилия: $_lastName');
    print('Возраст: $_age лет');
  }
}

///                    ///                  ///

// Задание 4
// Создайте класс Soda (для определения типа газированной воды), принимающий 1
// аргумент при инициализации (отвечающий за добавку к выбираемому лимонаду).
// В этом классе реализуйте метод show_my_drink(), выводящий на печать «Газировка
//  и {ДОБАВКА}» в случае наличия добавки, а иначе отобразится следующая фраза:
//  «Обычная газировка».

class Soda {
  String? additive;
  Soda({required this.additive});
  void show_my_drink() {
    // if (additive == null) {
    //   print('regular soda');
    // } else {
    //   print('Soda with an additive $additive');
    // }
    print(
        additive == null ? 'Regular soda $additive' : 'Soda with an additive');
  }
}

// Задание 5
// Реализуйте класс Worker (Работник), который будет иметь
// следующие свойства: name (имя), surname (фамилия), rate (ставка за
// день работы), days (количество отработанных дней). Также класс
// должен иметь метод getSalary(), который будет выводить зарплату
// работника. Зарплата - это произведение (умножение) ставки rate на
// количество отработанных дней days.

// class Worker {
//   String name;
//   String surname;
//   int rate;
//   int days;
//   Worker({
//     required this.name,
//     required this.surname,
//     required this.rate,
//     required this.days,
//   });
//   void getSalary() {
//     print(
//       'Зарплата рботника $surname $name за $days дней = ${rate * days}\$',
//     );
//   }
// }

abstract class Worker {
  getSalary2();
}

class Erlan extends Worker {
  String name;
  String surname;
  int rate;
  int days;
  Erlan({
    required this.name,
    required this.surname,
    required this.rate,
    required this.days,
  });

  @override
  getSalary2() {
    print(
      'Зарплата рботника $surname $name за $days дней = ${rate * days}\$',
    );
  }
}

// Задание 6
//  Автомобили. Создать класс Car, Engine и Driver , Класс Driver
// содержит поля - ФИО, стаж вождения.
// ● Класс Engine содержит поля - мощность, производитель.
// ● Класс Car содержит поля - марка автомобиля, класс
// автомобиля, вес, водитель типа Driver, мотор типа Engine.
// Методы start(), stop(), turnRight(), turnLeft(), которые выводят на
// печать: ’Поехали’, ‘Останавливаемся’, ‘Поворот направо’ или
// ‘Поворот налево’. А также метод printCarSetting(), который
// выводит полную информацию об автомобиле, ее водителе и
// моторе.
// ● Создать производный от Car класс - Lorry (грузовик),
// характеризуемый также грузоподъемностью кузова. Создать
// производный от Car класс - SportCar, характеризуемый также
// предельной скоростью. Пусть класс Driver расширяет класс
// Person.

// Задание 7
// Напишите программу, которая должна определить, пройдет ли поезд в тоннель.
//Размеры тоннеля (ширина и высота) вводит пользователь. Тоже самое касается габаритов
//поезда, пользователь вводит в программу значения длины, ширины и высоты поезда.
class Tunel {
  double tunnelWidth;
  double tunnelHeight;
  double trainWidth;
  double trainHeight;

  Tunel({
    required this.tunnelHeight,
    required this.tunnelWidth,
    required this.trainHeight,
    required this.trainWidth,
  });

  void checkTunnel() {
    if (trainHeight >= tunnelHeight || trainWidth >= tunnelWidth) {
      print('Поезд не поместиться в туннель');
    } else {
      print('Поезд пройдет');
    }
  }
}

// Задание 8
// Некая сеть фастфудов предлагает несколько видов гамбургеров:
// маленький (50 сом, 20 калорий)
// большой (100 сом, 40 калорий)
// Гамбургер может быть с одним из нескольких видов начинок (обязательно):
// сыром (+ 10 сом, + 20 калорий)
// салатом (+ 20 сом, + 5 калорий)
// картофелем (+ 15 сом, + 10 калорий)
// Дополнительно, гамбургер можно посыпать приправой (+ 15 сом, 0 калорий) и
//полить майонезом (+ 20 сом, + 5 калорий). Напиши программу, расчиытвающую стоимость
//и калорийность гамбургера. Используй ООП подход (подсказка: нужен класс Гамбургер,
// методы для выбора опций и рассчета нужных величин).
// Код должен быть защищен от ошибок. Представь, что твоим классом будет пользоваться
//другой программист. Если он передает неправильный тип гамбургера, например, или
// неправильный вид добавки, должно выбрасываться исключение (ошибка не должна молча
// игнорироваться).

void main(List<String> args) {
  Hamburger hamburger = Hamburger();
  hamburger.chooseHamburger();
  hamburger.chooseFilling();
  hamburger.chooseSomethingElse();
}

class Hamburger {
    int sum2 = 0;
    int sum = 0;
  void chooseHamburger() {
    print('Добро пожаловать выберите гамбургер');
    print('нажмите кнопку 1: маленький (50 сом, 20 калорий)');
    print('Нажмите кнопку 2: большой (100 сом, 40 калорий)');

    int userChoose = int.parse(stdin.readLineSync()!);
    switch (userChoose) {
      case 1:
        print("C вас ${sum += 50} сом");
        break;

      case 2:
        print("C вас ${sum += 100} сом");
      break;
      default:
        chooseHamburger();
    }
  }

  void chooseFilling() {
    print('Выберите ночинку вот несколько вариантов:');
    print('Нажмите 1: если хотите сыром (+ 10 сом, + 20 калорий)');
    print('Нажмите 2: если хотите салатом (+ 20 сом, + 5 калорий)');
    print('Нажмите 3: если хотите картофелем (+ 15 сом, + 10 калорий)');
    print('Нажмите 4: если хотите со всеми ночинками');
    int userChoose = int.parse(stdin.readLineSync()!);
    switch (userChoose) {
      case 1:
        print("C вас ${sum += 10} сом");
        break;
      case 2:
        print("C вас ${sum += 20} сом");
        break;
      case 3:
        print("C вас ${sum += 15} сом");
        break;
      case 4:
        print("C вас ${sum += 45} сом");
        break;
      default:
        chooseFilling();
    }
  }

  void chooseSomethingElse() {
    print('Нажмите 1: если хотите еще что то выбрать');
    print('Нажмите 2: если хотите закончить покупку');
    sum2 = sum;
    int userChoose = int.parse(stdin.readLineSync()!);
    if (userChoose == 1) {
      print('Выберите что вы хотите еще заказать');
      print('Нажмите 1: Если хотите заказать гамбургер');
      print('Нажмите 2: Если хотите заказать начинку');
      print('Нажмите 3: Если хотите оба');
      int userChoose = int.parse(stdin.readLineSync()!);
      if (userChoose == 1) {
        chooseHamburger();
      } else if (userChoose == 2) {
        chooseFilling();
      } else if (userChoose == 3) {
        chooseHamburger();
        chooseFilling();
      } else {
        chooseSomethingElse();
      }
    } else if (userChoose == 2) {
      sum = sum2 + sum;
      print('Спасибо за покупку! C вас $sum сом');
    } else {
      chooseSomethingElse();
    }
  }
}
