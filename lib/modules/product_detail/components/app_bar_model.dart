import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidgetProductDetail extends PreferredSize {
  final String heroTag;
  final String url;
  AppBarWidgetProductDetail({
    Key? key,
    required this.heroTag,
    required this.url,
  }) : super(
          preferredSize: const Size.fromHeight(300),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(100),
              bottomLeft: Radius.circular(100),
            ),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                ),
              ),
              child: Stack(
                children: [
                  SizedBox(
                    height: 999,
                    child: Hero(
                      tag: heroTag,
                      child: Image.network(
                        url,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const Center(
                              child: CircularProgressIndicator());
                        },
                        alignment: Alignment.center,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.1),
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 13,
                                top: 10,
                                bottom: 10,
                                right: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: GestureDetector(
                                onTap: () => Get.back(),
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  size: 20,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 13,
                                top: 10,
                                bottom: 10,
                                right: 13,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: GestureDetector(
                                onTap: () => Get.back(),
                                child: const Icon(
                                  Icons.favorite,
                                  size: 20,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 13,
                                top: 10,
                                bottom: 10,
                                right: 13,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: GestureDetector(
                                onTap: () => Get.back(),
                                child: const Icon(
                                  Icons.share,
                                  size: 20,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          key: key,
        );
}
