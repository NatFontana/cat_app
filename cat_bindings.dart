import 'package:cat_app/repository/cat_repository.dart';
import 'package:get/get.dart';
import 'cat_controller.dart';

class CatBindings implements Bindings {

  CatBindings() {
    dependencies();
  }

  @override
  CatBindings dependencies() {
    Get.put<CatRepository>(
      CatRepository(),
    );
    Get.put(
      CatController(
        Get.find(),
      ),
    );
    return this;
  }
}
