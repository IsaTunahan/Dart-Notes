void main(List<String> args) {
  if ('isa'.isAdmin()) {
    print('object');
  }

  String? name;
  name.isAdmin();
}

extension StringUserCheckExtencition on String? {
  bool isAdmin() {
    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}
