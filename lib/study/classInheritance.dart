void main() {
  print('-----Idol-------');
  Idol apink = Idol(name: '에이핑크', membersCount: 5);

  apink.sayName();
  apink.sayMemberCount();

  print('-----BoyGroup-------');
  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayName();
  bts.sayMemberCount();
  bts.sayMale();

  print('-----GirlGroup-------');
  GirlGroup redVelvet = GirlGroup('Red Velvet', 5);
  redVelvet.sayName();
  redVelvet.sayMemberCount();
  redVelvet.sayFemale();
}

// 상속 - inheritance
// 상속을 받으면 부모 클래스의 모든 속성을
// 자식 클래스가 부여받는다.
class Idol {
  // 이름
  String name;
  // 멤버 숫자
  int membersCount;

  Idol({required this.name, required this.membersCount});

  void sayName() {
    print('저는 ${this.name} 입니다.');
  }

  void sayMemberCount() {
    print('${this.name}은 ${this.membersCount}명의 멤버가 있습니다.');
  }
}

class BoyGroup extends Idol {
  BoyGroup(String name, int membersCount)
    : super(name: name, membersCount: membersCount);

  void sayMale() {
    print('저는 남자 그룹입니다.');
  }
}

class GirlGroup extends Idol {
  GirlGroup(String name, int membersCount)
    : super(name: name, membersCount: membersCount);

  void sayFemale() {
    print('저는 여자 그룹입니다.');
  }
}
