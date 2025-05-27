void main() {
  Map<String, String> harryPotter = {
    'Harry Potter': '해리포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저',
  };

  final newHarryPotter = harryPotter.map(
    (key, value) => MapEntry('Harry Potter Chracter $key', '해리포터 캐릭터 $value'),
  );

  print(harryPotter);
  print(newHarryPotter);

  final keys = harryPotter.keys.map((x) => 'HPC $x').toList();
  print(keys);

  final values = harryPotter.values.map((x) => '해리포터 $x').toList();
  print(values);
}
