import 'package:cat_app/repository/cat_repository.dart';
import 'package:cat_app/repository/model/response_cat.dart';
import 'package:get/get.dart';

class CatController extends GetxController with StateMixin<List<ResponseCat>> {
  final CatRepository _catRepository;

  CatController(this._catRepository);

  @override
  void onInit() {
    super.onInit();
    findCats();
  }

  Future<List<ResponseCat>> findCats() async {
    change([], status: RxStatus.loading());
    try{
      List<ResponseCat> cats = await _catRepository.findAllCats();
      change(cats, status: RxStatus.success());
      return cats;
    } catch (error, stack) {
      change([], status: RxStatus.error(error.toString() + "\n\n\n" + stack.toString()));
    }
    return [];
  }
}
