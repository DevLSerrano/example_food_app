import 'package:example_food_app/data/fake_data.dart';
import 'package:get/get.dart';
import './home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FakeData());
    Get.put(
      HomeController(
        fakeData: Get.find(),
      ),
    );
  }
}
