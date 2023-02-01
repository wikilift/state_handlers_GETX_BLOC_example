class UserToTest {
  final String name;
  final int age;
  final List<String> profession;

  UserToTest copyWith({
    String? name,
    int? age,
    List<String>? profession,
  }) =>
      UserToTest(name: name ?? this.name, age: age ?? this.age, profession: profession ?? this.profession);

  UserToTest({required this.name, required this.age, required this.profession});
}
