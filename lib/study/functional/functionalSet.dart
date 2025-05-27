void main() {
  Set blackPinkSet = {'로제', '지수', '제니', '리사'};
  final newBlackSet = blackPinkSet.map((x) => '블랙핑크 $x').toSet();

  print(newBlackSet);
}
