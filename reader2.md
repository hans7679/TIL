#실습1
####구구단 출력
-void main() {
  for (int i = 1; i <= 9; i++) {
    for (int j = 1; j <= 9; j++) {
      print('$i x $j = ${i * j}');
    }
    print(''); // 각 단의 구분을 위한 빈 줄
  }
}
