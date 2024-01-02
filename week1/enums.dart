void main(List<String> args) {
  final customerCities = Cities.istanbul;
  print(customerCities.index);
  print(customerCities.name);

  if (customerCities == Cities.istanbul) {}

  if (customerCities.name == 'istanbul') {}

  switch (customerCities) {
    case Cities.istanbul:
    case Cities.ankara:
    case Cities.izmir:
    case Cities.antalya:
  }
}

enum Cities { istanbul, ankara, izmir, antalya }
