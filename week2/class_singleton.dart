// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'model/product_config_model.dart';

void main(List<String> args) {
  final newProduct = Product.money;
  calculateMoney(Product.money ?? 0);
  productNameChange();
  calculateMoney(Product.money ?? 0);

  final user1 = User('Isa', 'aa');

  final newProduct2 = Product(user1.product);
  final newProduct3 = Product.fromUser(user1);
  Product.isa();

  //api key neydi acaba
  ProductConfig.instance.apiKey;
  ProductConfig.instance.apiKey;
  ProductLazySingleton.instance;
}

void calculateMoney(int money) {
  if (money > 5) {
    print('5 TL daha ekledik');
    Product.incerementMoney(5);
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = null;
}

class Product {
  String name;
  Product(this.name);

  Product.isa([this.name = 'isa']);

  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  static int? money = 10;
  static const companyName = 'VB Bank';
  static void incerementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;
  User(
    this.name,
    this.product,
  );
}
