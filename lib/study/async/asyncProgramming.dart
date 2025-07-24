void main() {
  // addNumbers(1, 1);
  // addNumbers(2, 2);

  // Future - 미래
  // 미래에 받아올 값
  Future<String> name = Future.value('종원');
  Future<int> number = Future.value(100);
  Future<bool> isTrue = Future.value(true);
}

// 1+1 = 2
// 2+2 = 4
// void addNumbers(int a, int b) {
//   print('계산중: $a + $b');

//   print('계산완료 : ${a + b}');
// }
