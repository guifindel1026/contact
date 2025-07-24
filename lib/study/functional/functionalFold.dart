void main() {
  List<int> numbers = [1, 3, 5, 7, 9];

  // final sum = numbers.fold(0, (prev, next) => prev + next);

  final sum = numbers.fold(0, (prev, next) {
    print('------------------');
    print('previous : $prev');
    print('next : $next');
    print('total : ${prev + next}');

    return prev + next;
  });

  print(sum);
  // Output: 25

  List<String> words = ['안녕하세요', '저는', '종원입니다'];
  final sentence = words.fold('', (prev, next) => '$prev $next');
  print(sentence);

  final wordLengths = words.fold<int>(0, (prev, next) => prev + next.length);
  print(wordLengths);
}
