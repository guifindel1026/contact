void main() {
  Idol blackPink = const Idol('블랙핑크', ['지수', '제니', '리사', '로제']);

  Idol blackPink2 = const Idol('블랙핑크', ['지수', '제니', '리사', '로제']);

  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();

  print(blackPink == blackPink2);

  // Idol bts = Idol('BTS', ['진', '슈가', '제이홉', '지민', '뷔', '정국']);

  Idol bts = Idol.fromList([
    ['진', '슈가', '제이홉', '지민', '뷔', '정국'],
    'BTS',
  ]);

  print(bts.name);
  print(bts.members);
  bts.sayHello();
  bts.introduce();
}

// idol class
// name (이름) - 변수
// memberss (멤버들) - 변수
// sayHello(인사) - 함수
// introduce(멤버소개) - 함수
//
// constructor (생성자)
// immutable 프로그래밍
class Idol {
  final String name;
  final List<String> members;

  // Idol(String name, List<String> members)
  //   : this.name = name,
  //     this.members = members;

  const Idol(this.name, this.members);

  Idol.fromList(List values) : this.members = values[0], this.name = values[1];

  void sayHello() {
    print('안녕하세요. ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
}
