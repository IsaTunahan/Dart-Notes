void main() {
  final userNormal = User(name: 'Isa', money: 50);
  final userBank = BankUser('Tunahan', 40, 123456);
  final userSpecial = SpecialUser(name: 'Isa', money: 100, bankingCode: 12345, discount: 50);

  userNormal.sayMoneyWithCompanyName();
  userBank.sayMoneyWithCompanyName();
  userSpecial.sayMoneyWithCompanyName();

  print(userSpecial.calculateMoney);
  print(userSpecial.money);
}

abstract class IUser {
  final String name;
  final int money;
  IUser({
    required this.name,
    required this.money,
  });
  void sayMoneyWithCompanyName() {
    print('$name Bey $money TL paraniz vardir');
  }
}

class User extends IUser {
  final String name;
  final int money;
  User({
    required this.name,
    required this.money,
  }) : super(name: '', money: 0);
}

class BankUser extends IUser {
  final int bankigncode;

  BankUser(String name, int money, this.bankigncode) : super(name: name, money: money);

  void bankSpecialLogic() {
    print(money);
  }
}

class SpecialUser extends IUser {
  final String name;
  int money;
  final int bankingCode;
  late final int _discount;
  SpecialUser({
    required this.name,
    required this.money,
    required this.bankingCode,
    required int discount,
  }) : super(name: '', money: 0) {
    _discount = discount;
  }

  int get calculateMoney => money = (money ~/ _discount);

  // int calculateMoney() {
  //   return money = money ~/ _discount;
  // }
}
