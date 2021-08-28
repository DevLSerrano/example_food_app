import 'package:example_food_app/models/product_model.dart';
import 'package:example_food_app/modules/product_detail/product_detail_bindings.dart';
import 'package:example_food_app/modules/product_detail/product_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductIcon extends StatelessWidget {
  const ProductIcon({
    Key? key,
    required this.productModel,
  }) : super(key: key);
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(
        () => ProductDetailPage(
          product: productModel,
          heroTag:
              (productModel.hashCode * DateTime.now().millisecondsSinceEpoch)
                  .toString(),
        ),
        binding: ProductDetailBindings(),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: (productModel.hashCode *
                      DateTime.now().millisecondsSinceEpoch)
                  .toString(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Banner(
                  location: BannerLocation.topEnd,
                  message: '50% OFF',
                  color: Colors.orange[900]!.withOpacity(0.9),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.network(
                      productModel.image,
                      fit: BoxFit.fill,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const Center(child: CircularProgressIndicator());
                      },
                      alignment: Alignment.center,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 100,
              height: 25,
              child: Text(
                productModel.title,
                overflow: TextOverflow.fade,
                style: const TextStyle(fontSize: 11),
                maxLines: 2,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                const Text(
                  '15 min',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
