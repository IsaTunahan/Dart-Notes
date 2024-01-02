// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final model = CarModel(category: CarModels.bmw, name: 'Bmw M4', money: 400, isSecondHand: false);
}

//benim bir arabalar sinifim olacak
//arabalarin modeli(bmw,toyota), ismi, parasi, kesin olacak sehri olmayacak, ikinci el durumu eger musteri soylemzse
//her urunun ikinci el kabul edilecek

//benim 5 tane arabam olacak

//benim bu arabalarimin kac tanesi ikinci el
//yeni bir araba geldi bu bizde var gibi hissediyorum dogru mu?
//bana bmw olan money 20 den buyuk olan arabalarimizin ismini soyler misin

class CarModel {
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;
  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
  });
}

enum CarModels { bmw, mercedes, audi, ferrari, porche }
