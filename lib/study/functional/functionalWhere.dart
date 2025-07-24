void main() {
  List<Map<String, String>> people = [
    {'name': '로제', 'group': '블랙핑크'},
    {'name': '윈터', 'group': '에스파'},
    {'name': '아린', 'group': '오마이걸'},
    {'name': '루다', 'group': '우주소녀'},
    {'name': '진', 'group': '방탄소년단'},
  ];
  print(people);

  final blackPink = people.where((x) => x['group'] == '블랙핑크').toList();
  final bts = people.where((x) => x['group'] == '방탄소년단').toList();

  print(blackPink);
  print(bts);
}
