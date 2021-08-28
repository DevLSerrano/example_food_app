import 'package:example_food_app/data/fake_data.dart';
import 'package:example_food_app/models/product_model.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  final FakeData fakeData;
  ProductDetailController({
    required this.fakeData,
  });

  Future<List<ProductModel>> getProductForMenu({int? index}) async {
    return await fakeData.getProductForMenu(index: index).then(
      (value) {
        return value;
      },
    );
  }
}
