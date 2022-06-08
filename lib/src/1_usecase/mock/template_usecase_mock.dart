import 'package:manners_maketh_man/src/1_usecase/template_usecase.dart';
import 'package:manners_maketh_man/src/2_domain/user.dart';

class TemplateUsecaseMock extends TemplateUsecase {
  static Future<List<User>> getUsers() async {
    return [];
  }
}
