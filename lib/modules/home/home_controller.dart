import 'package:example_food_app/data/fake_data.dart';
import 'package:example_food_app/models/menu_model.dart';
import 'package:example_food_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<List<MenuModel>> {
  final indexMenuSelected = Rxn<int>();
  final FakeData fakeData;
  final loadingProdcts = true.obs;

  HomeController({
    required this.fakeData,
  });

  @override
  void onInit() async {
    await getTypesMenu();

    super.onInit();
  }

  Future<void> getTypesMenu() async {
    await fakeData.getTypesMenu().then(
          (myMenu) => change(myMenu, status: RxStatus.success()),
        );
  }

  Future<List<ProductModel>> getProductForMenu() async {
    return await fakeData
        .getProductForMenu(index: indexMenuSelected.value)
        .then(
      (value) {
        loadingProdcts.value = false;
        return value;
      },
    );
  }
}
