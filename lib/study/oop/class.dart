void main() {
  _Idol blackPink = _Idol('블랙핑크', ['지수', '제니', '리사', '로제']);

  _Idol bts = _Idol.fromList([
    ['진', '슈가', '제이홉', '지민', '뷔', '정국'],
    'BTS',
  ]);

  print(blackPink.firstMember);
  print(bts.firstMember);

  blackPink.firstMember = '아린';
  bts.firstMember = '구스타브';
  print(blackPink.firstMember);
  print(bts.firstMember);
}

// idol class
// name (이름) - 변수
// memberss (멤버들) - 변수
// sayHello(인사) - 함수
// introduce(멤버소개) - 함수
//
// constructor (생성자)
// immutable 프로그래밍

// getter / setter
// 데이터를 가져올때 / 데이터를 설정할때때
class _Idol {
  final String name;
  final List<String> members;

  // Idol(String name, List<String> members)
  //   : this.name = name,
  //     this.members = members;

  _Idol(this.name, this.members);

  _Idol.fromList(List values) : this.members = values[0], this.name = values[1];

  void sayHello() {
    print('안녕하세요. ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }

  // getter
  String get firstMember {
    return this.members[0];
  }

  // setter
  set firstMember(String member) {
    this.members[0] = member;
  }
}
