import 'package:example_food_app/models/product_model.dart';
import 'package:example_food_app/modules/home/components/app_bar_model.dart';
import 'package:example_food_app/modules/home/components/adress_widget.dart';
import 'package:example_food_app/modules/home/components/icon_menu.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';
import 'components/product_icon.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBarWidget(
        color: Theme.of(context).primaryColor,
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 32, left: 16, right: 0, top: 32),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const AdressWidget(),
            const SizedBox(
              height: 32,
            ),
            controller.obx(
              (myMenu) {
                return Flexible(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 90,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: myMenu?.length,
                          itemBuilder: (context, index) => IconMenu(
                            title: myMenu?[index].title ?? 'Error Product',
                            icon:
                                myMenu?[index].icon ?? const Icon(Icons.error),
                            onTap: () {
                              controller.indexMenuSelected.value =
                                  myMenu?[index].index;
                              controller.loadingProdcts.value = true;
                            },
                          ),
                        ),
                      ),
                      const Divider(),
                      Obx(
                        () => Flexible(
                          child: FutureBuilder<List<ProductModel>>(
                            future: controller.getProductForMenu(),
                            builder: (context, snapshot) {
                              if (!snapshot.hasData ||
                                  snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              return SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Stock Off',
                                      overflow: TextOverflow.fade,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 200,
                                      child: ListView.builder(
                                        itemCount: snapshot.data!.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) =>
                                            ProductIcon(
                                          productModel: snapshot.data![index],
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Popular',
                                      overflow: TextOverflow.fade,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 200,
                                      child: ListView.builder(
                                        itemCount: snapshot.data!.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) =>
                                            ProductIcon(
                                          productModel: snapshot.data![index],
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Todos',
                                      overflow: TextOverflow.fade,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 200,
                                      child: ListView.builder(
                                        itemCount: snapshot.data!.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) =>
                                            ProductIcon(
                                          productModel: snapshot.data![index],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
