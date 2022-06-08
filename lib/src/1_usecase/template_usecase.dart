import 'package:manners_maketh_man/src/2_domain/user.dart';
import 'package:manners_maketh_man/src/3_infra/http/get.dart';

class TemplateUsecase {
  static Future<User> getUser() async {
    final getUser = HttpGet.get();

    final user = User(name: getUser.firstName);

    return user;
  }
}
