void main() {
  List<int> even = [2, 4, 6, 8, 10];

  List<int> odd = [1, 3, 5, 7, 9];

  //cascading operator
  // ...

  print([...even, ...odd]);

  print(even);
  print([...even]);

  // cascading operator를 사용하면
  // 기존의 리스트를 변경하지 않고 새로운 리스트를 생성할 수 있습니다.
  print(even == [...even]); // false
}
