# TIL - 실습

## 주제: rectangle 길이 출력 코드 작성

## 내용: Dart 언어 출력 코드 작성

#### 코드:
```dart
class Rectangle {
  num left, top, width, height;
  
  Rectangle(this.left, this.top, this.width, this.height);
  
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

void main()
  {
    var r = Rectangle(5, 10, 15, 20);
  print([r.left, r.top, r.width, r.height]);
  print([r.right, r.bottom]);
  
  r.right = 15;
  r.bottom = 20;
  print([r.left, r.top, r.width, r.height]);
  }
  ```
# TIL - 실습

## 주제: Hero 내용 출력 코드 작성

## 내용: Dart 언어 출력 코드 작성

#### 코드:
```dart
class Hero {
   String name ='영웅';

   void run() {
     print('뛴다!');
   }
}

class SuperHero extends Hero {
   @override
   void run() {
      super.run();
      this.fly();
   }

   void fly() {
     print('난다!');
   }
}

void main() {
   var hero = SuperHero();
   hero.run();
   hero.fly();
   print(hero.name);
}
```

# TIL - 실습

## 주제: Goblin attack 내용 출력 코드 작성

## 내용: Dart 언어 출력 코드 작성

#### 코드:
```dart
// Monster는 attack 할 수 있다.
abstract class Monster{
  void attack();
}

// Goblin은 Monster이며 고블린 어택을 한다.
class Goblin implements Monster {
  @override
  void attack() => print('고블린 어택');
}

// Bat은 Monster이며 할퀴기 attack을 한다.
class Bat implements Monster {
  @override
  void attack() => print('할퀴기!');
}

void main()
{
  Goblin m1 = Goblin();
  m1.attack();
  Bat m2 = Bat();
  m2.attack();
  
  print('');
  
  List<Monster> monsters = [m1,m2];
  monsters.forEach((m) => m.attack());
}
```
# TIL - 실습

## 주제: lottonums / countryMap 내용 출력 코드 작성

## 내용: Dart 언어 출력 코드 작성

#### 코드:
```dart
void main() {
  var lottoNums = [5, 6, 11, 13, 17, 21];
  var countryMap = {'한국': '서울', '일본': '도쿄', '중국': '북경'};
  var setNums = {1, 2, 3, 4, 5, 6};

  print(lottoNums[0]); //5
  print(countryMap['일본']); // 도쿄
  print(setNums.contains(5)); //2
  
  lottoNums.add(45); // 보너스 번호
  print(lottoNums);
  
  countryMap['인도'] = '인디아';
  print(countryMap);
  
  setNums.add(7);
  print(setNums);
}

```
