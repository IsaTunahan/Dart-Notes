class User {
  late final String _id;
  late final String name;
  late final int money;
  late final int? age;
  late final String? city;

  late final String userCode;

  User(String name, int money, {required String id, int? age, String? city}) {
    this.name = name;
    this.money = money;
    _id = id;
    this.age = age;
    this.city = city;

    userCode = (city ?? 'ist ') + name;
  }
  String isSpecialUser(String id) {
    return _id = id;
  }
}
