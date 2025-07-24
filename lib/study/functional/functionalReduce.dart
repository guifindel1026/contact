void main() {
  List<int> numbers = [1, 3, 5, 7, 9];
  // final result = numbers.reduce((prev, next) {
  //   print('------------------');
  //   print('previous : $prev');
  //   print('next : $next');
  //   print('total : ${prev + next}');

  //   return prev + next;

  // });

  final result = numbers.reduce((prev, next) => prev + next);

  print(result);
  // Output: 25

  List<String> words = ['안녕하세요', '저는', '종원입니다'];
  final sentence = words.reduce((prev, next) => '$prev $next');
  print(sentence);
  // Output: 안녕하세요 저는 종원입니다

  // Reduce 함수는 리스트의 모든 요소를 하나로 합치는 함수입니다.
  // 예를 들어, 숫자 리스트의 합을 구하거나 문자열 리스트를 하나의 문장으로 합치는 데 사용됩니다.
  // 아래 코드는 주석 처리되어 있지만, reduce를 사용하여 문자열의 길이를
  // 모두 합산하는 예시입니다.
  // 문제는 reduce 함수는 리스트 요소의 타입과 리턴 타입이 동일해야 한다는 점입니다.
  // 따라서, 아래 코드는 컴파일 에러가 발생합니다.
  // words.reduce((prev, next) => prev.length + next.length);
}
