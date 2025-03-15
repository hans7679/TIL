# TIL - 실습1

## 주제: 구구단 출력 코드 작성

## 내용: Dart 언어 구구단을 출력 코드 작성

#### 코드:

void main() {<br>
  for (int i = 1; i <= 9; i++) {<br>
    for (int j = 1; j <= 9; j++) {<br>
      print('$i x $j = ${i * j}');<br>
    }<br>
    print('');<br>
  }<br>
}<br>


# TIL - 실습2

## 주제: 정사각형의 길이를 입력하고 사각형을 출력 코드 작성

## 내용:
정사각형을 출력하는 다양한 코드를 작성

#### 코드:
void main() {<br>
  int n = 10;<br>
<br>
  print("\n곽 찬 사각형:");<br>
  filledSquare(n);<br>
<br>
  print("\n테두리 사각형:");<br>
  borderSquare(n);<br>
<br>
  print("\n/ 표시 사각형:");<br>
  slashSquare(n);<br>
<br>
  print("\n\\ 표시 사각형:");<br>
  backslashSquare(n);<br>
<br>
  print("\nX 표시 사각형:");<br>
  xSquare(n);<br>
}<br>
<br>
void filledSquare(int n) {<br>
  for (int i = 0; i < n; i++) {<br>
    print('.' * n);<br>
  }<br>
}<br>
<br>
void borderSquare(int n) {<br>
  for (int i = 0; i < n; i++) {<br>
    if (i == 0 || i == n - 1) {<br>
      print('.' * n);<br>
     } else {<br>
      print('.' + ' ' * (n - 2) + '.');<br>
    }<br>
  }<br>
}<br>
<br>
void slashSquare(int n) {<br>
  for (int i = 0; i < n; i++) {<br>
    print(' ' * i + '/');<br>
  }<br>
}<br>
<br>
void backslashSquare(int n) {<br>
  for (int i = 0; i < n; i++) {<br>
    print(' ' * (n - i - 1) + '\\');<br>
  }<br>
}<br>
<br>
void xSquare(int n) {<br>
  for (int i = 0; i < n; i++) {<br>
    String row = '';<br>
    for (int j = 0; j < n; j++) {<br>
      if (i == j || i + j == n - 1) {<br>
        row += 'X';<br>
      } else {<br>
        row += ' ';<br>
      }<br>
    }<br>
    print(row);<br>
  }<br>
}<br>
