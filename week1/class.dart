import 'model/user_model.dart';

void main() {
  User user1 = User(
    'ali',
    10,
    id: '123',
  );

  print(user1.age);
  print(user1.userCode);

  if (user1.city == null) {
    print('Musteri sehir bilgisi vermemis');
  } else {
    if (user1.city == 'Istanbul' || user1.city == 'istanbul') {
      print('Tebrikler kazandiniz');
    } else {
      print('Maalesef sehriniz kampanyaya dahil degil');
    }
  }
}

class User2 {
  late final String name;
  late final int money;
  late final int? age;
  late final String? city;

  late final String userCode;

  User2(this.name, this.money, this.age, this.city) {
    userCode = (city ?? 'ist ') + name;
  }
}
