import 'package:example_food_app/models/product_model.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './product_detail_controller.dart';
import 'components/app_bar_model.dart';

class ProductDetailPage extends GetView<ProductDetailController> {
  const ProductDetailPage({
    Key? key,
    required this.product,
    required this.heroTag,
  }) : super(key: key);
  final ProductModel product;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgetProductDetail(
        heroTag: heroTag,
        url: product.image,
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 32, left: 16, right: 0, top: 32),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Text(
                  product.title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[800],
                    size: 12,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '4.6',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '-',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.timer,
                    color: Colors.yellow[800],
                    size: 12,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    product.timeInMinutes.toString(),
                    style: const TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 300,
                height: 300,
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Text(
                      product.description,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
