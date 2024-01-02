// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final user = _User('isa', age: 21);
//musterinin yasi 18den kucuk kontrolu yapar misin

// if((user.age ?? 10) < 18){}

  if (user.age is int) {
    if (user.age! < 18) {
      print('evet kucuk');
      user.updateMoneyWithString('TR');
    } else {
      user.updateMoneyNumber(15);
    }
  }

  ///kullanicilarin parasi var ama paranin tipi degiken olabilir
  ///parasi olan adamin o parametresi bir isimde olabilir veya deger olabilir
  ///tr yazacak ya da 15 yazabilir

  final _newType = user.moneyType is String ? (user.moneyType as String) : '';

  print(_newType + 'A');
  //----------------------------

  int money1 = 50;
  int money2 = 50;
//musteri banka sinifindan iki kisinin parasini toplayip sonucu soyler misin

  if (money1 == money2) {
    print('ok');
  }

  final moneyBank1 = Bank(50, '12');
  final moneyBank2 = Bank(50, '12');
  print(moneyBank1 == moneyBank2);

  //musteri banka sinifindan iki kisinin parasini toplayip sonucu soyler misin
  print(moneyBank1 + moneyBank2);

  //benim bankama gelen musterilerimin idsi ayni olanlar ayni musteri olmalidir
  print(moneyBank1 == moneyBank2);
  print(moneyBank1.toString());

  //diger bankadan bir modul aldik bunu ekleyip musterinin parasini sorgular misin

//musteri adamin parasina 10 tl ekle ekrana dondur adamin idsini 1 arttir sonrasinda ismini veli yap
  moneyBank1.money += 10;
  print(moneyBank1.money);

  moneyBank1
    ..money += 10
    ..updateName('Isa');
  print(moneyBank1);
}

class _User {
  final String name;
  int? age;

  dynamic moneyType;
  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyNumber(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  int money;
  final String id;
  String? name;

  Bank(this.money, this.id);

  void updateName(String name) {
    this.name == name;
  }

  int operator +(Bank newBank) {
    return money + newBank.money;
  }

  @override
  String toString() {
    return super.toString() + 'isa';
  }

  bool operator ==(covariant Bank other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode => money.hashCode ^ id.hashCode;

  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

mixin BankMixin {
  void sayBankHello();

  void calculateMoney(int money) {
    print(money);
  }
}
