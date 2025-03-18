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
