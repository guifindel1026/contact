// enum Status {
//   approved, //승인
//   pending, //대기
//   rejected, //거절절
// }

void main() {
  int sum1 = addNumbers(10, c: 30, b: 10);
  int sum2 = addNumbers(50, b: 35, c: 70);

  print('sum1 : $sum1');
  print('sum2 : $sum2');

  print('final sum : ${sum1 + sum2}');
}

// positional parameter - 순서가 중요한 파라미터
// optional parameter - 있어도 되고 없어도 되는 파라미터터
// named parameter - 이름이 있는 파라미터(순서가 중요하지 않다)
// 세개의 숫자 (a,b,c)를 더하고 짝수인지 홀수인지 알려주는 함수
int addNumbers(int a, {required int b, int c = 30}) => a + b + c;
