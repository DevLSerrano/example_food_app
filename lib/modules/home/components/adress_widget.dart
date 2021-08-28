import 'package:flutter/material.dart';

class AdressWidget extends StatelessWidget {
  const AdressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.maps_home_work),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '242 ST Marks Eve, Brasil',
            ),
          ],
        ),
        const SizedBox(
          width: 32,
        ),
        const Icon(Icons.edit)
      ],
    );
  }
}
