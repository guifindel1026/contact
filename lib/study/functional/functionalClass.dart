void main() {
  final List<Map<String, String>> people = [
    {'name': '로제', 'group': '블랙핑크'},
    {'name': '윈터', 'group': '에스파'},
    {'name': '아린', 'group': '오마이걸'},
    {'name': '루다', 'group': '우주소녀'},
    {'name': '진', 'group': '방탄소년단'},
  ];

  // Map은 자유로운 객체이므로, 특정 아이템이 다른 아이템과 다르다 해도 영향을 주지 않는다.
  // Map은 구조화가 안되기 때문에 신뢰할 수 없는 데이터가 될 수 있다.
  // 이를 극복하기 위해 클래스를 이용하여 구조화해서 사용하는 것이 좋다.
  // 방법은 아래와 같다.
  final parsedPeople =
      people.map((x) => Person(name: x['name']!, group: x['group']!)).toList();

  // print(parsedPeople);

  for (Person person in parsedPeople) {
    print(person.name);
    print(person.group);
  }

  final bts = parsedPeople.where((x) => x.group == '방탄소년단');
  print(bts);

  final result = people
      .map((x) => Person(name: x['name']!, group: x['group']!))
      .where((x) => x.group == '방탄소년단')
      .fold<int>(0, (prev, next) => prev + next.name.length);
  // final result = people
  //     .map((x) => Person(name: x['name']!, group: x['group']!))
  //     .where((x) => x.group == '방탄소년단')
  //     .fold<int>(0, (prev, next) => prev + next.name.length);

  print(result);
}

class Person {
  final String name;
  final String group;
  Person({required this.name, required this.group});

  @override
  String toString() {
    return 'Person(name: $name, group: $group)';
  }
}
