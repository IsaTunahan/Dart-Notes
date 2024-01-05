void main(List<String> args) {
  Customer customer1 = Customer(
      firstname: 'İsa Tunahan',
      lastName: 'İslamoğlu',
      email: 'isatunahan18@gmail.com',
      phoneNumber: 5456913207,
      customerNumber: 0123456789);
  customer1.displayCustomerInfo();

  Order order = Order(
      orderNumber: '12345',
      orderDate: '04.01.2024',
      orderAmount: 50,
      products: ['Product-1', 'Product-2'],
      customer: customer1);

  order.displayOrderInfo();
}

class Customer {
  String firstname;
  String lastName;
  String email;
  int phoneNumber;
  int customerNumber;
  Customer({
    required this.firstname,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.customerNumber,
  });
  void displayCustomerInfo() {
    print('Müşteri Bilgileri');
    print('Adı: $firstname');
    print('Soyadı: $lastName');
    print('E-mail: $email');
    print('Telefon Numarası: $phoneNumber');
    print('Müşteri Numarası: $customerNumber');
    print('\n');
  }
}

class Order {
  String orderNumber;
  String orderDate;
  double orderAmount;
  List<String> products;
  Customer customer;
  Order({
    required this.orderNumber,
    required this.orderDate,
    required this.orderAmount,
    required this.products,
    required this.customer,
  });
  void displayOrderInfo() {
    print('Sipariş Bilgileri');
    print('Sipariş Numarası: $orderNumber');
    print('Sipariş Tarihi: $orderDate');
    print('Sipariş Tutarı: $orderAmount');
    print('Ürünler: $products');
    customer.displayCustomerInfo();
  }
}


/*
Müşteri (Customer) Sınıfı:

Özellikler:

İsim
Soyisim
E-posta
Telefon numarası
Müşteri numarası
Görevler:

Müşteri bilgilerini görüntüleme
Müşteri bilgilerini güncelleme
Yeni bir müşteri oluşturma
Sipariş (Order) Sınıfı:

Özellikler:

Sipariş numarası
Sipariş tarihi
Sipariş tutarı
Ürünler listesi
Müşteri bilgisi (Müşteri sınıfından bir referans)
Görevler:

Sipariş bilgilerini görüntüleme
Yeni bir sipariş oluşturma
Sipariş tutarını hesaplama
*/