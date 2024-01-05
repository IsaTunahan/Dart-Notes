void main(List<String> args) {
RegularUser regularUser = RegularUser('IsaTunahan');
AdminUser adminUser= AdminUser('AdminIsa');

print('Regular User');
regularUser.displayUserInfo();
print('Admin User');
adminUser.displayUserInfo();
adminUser.displayPremiumInfo();
}

enum UserRoles { admin, moderator, user }

abstract class User {
  String username;
  UserRoles role;

  User(this.username, this.role);

  void displayUserInfo() {
    print('Kullanıcı Adı: $username');
    print('Rolü: $role');
  }
}

mixin PremiumUser {
  bool isPremium = true;

  void displayPremiumInfo() {
    print(
        'Premium kullanıcı: ${isPremium == true ? 'Doğrulandı' : 'Doğrulanmadı'}');
  }
}

class RegularUser extends User {
  RegularUser(String username) : super(username, UserRoles.user);
}

class AdminUser extends User with PremiumUser{
AdminUser(String username): super(username,UserRoles.admin);
}
