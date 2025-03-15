# TIL - 실습1

#### 주제: 구구단 출력 코드 작성

#### 내용:
Dart 언어 구구단을 출력 코드 작성

```dart
void main() {
  for (int i = 1; i <= 9; i++) {
    for (int j = 1; j <= 9; j++) {
      print('$i x $j = ${i * j}');
    }
    print('');
  }
}

# TIL - 실습2

#### 주제: 정사각형의 길이를 입력하고 사각형을 출력 코드 작성

#### 내용:
정사각형을 출력하는 다양한 코드를 작성

void main() {
  int n = 10; // 정사각형의 크기를 설정

  print("\n곽 찬 사각형:");
  filledSquare(n);

  print("\n테두리 사각형:");
  borderSquare(n);

  print("\n/ 표시 사각형:");
  slashSquare(n);

  print("\n\\ 표시 사각형:");
  backslashSquare(n);

  print("\nX 표시 사각형:");
  xSquare(n);
}

void filledSquare(int n) {
  for (int i = 0; i < n; i++) {
    print('.' * n);
  }
}

void borderSquare(int n) {
  for (int i = 0; i < n; i++) {
    if (i == 0 || i == n - 1) {
      print('.' * n);
    } else {
      print('.' + ' ' * (n - 2) + '.');
    }
  }
}

void slashSquare(int n) {
  for (int i = 0; i < n; i++) {
    print(' ' * i + '/');
  }
}

void backslashSquare(int n) {
  for (int i = 0; i < n; i++) {
    print(' ' * (n - i - 1) + '\\');
  }
}

void xSquare(int n) {
  for (int i = 0; i < n; i++) {
    String row = '';
    for (int j = 0; j < n; j++) {
      if (i == j || i + j == n - 1) {
        row += 'X';
      } else {
        row += ' ';
      }
    }
    print(row); // 한 줄 완성 후 출력
  }
}
