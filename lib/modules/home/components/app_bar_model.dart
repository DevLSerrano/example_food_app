import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppBarWidget extends PreferredSize {
  final Color color;
  AppBarWidget({Key? key, required this.color})
      : super(
          preferredSize: const Size.fromHeight(250),
          child: Container(
            color: Colors.white,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 250,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(100),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://avatars.githubusercontent.com/u/62712813?v=4',
                            width: 50,
                          ),
                        ),
                        title: const Text(
                          'Olá, Leonardo Serrano, bateu a fome?',
                          overflow: TextOverflow.fade,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Icon(
                      MdiIcons.foodForkDrink,
                      color: Colors.white,
                      size: 80,
                    )
                    // Container(
                    //   padding: const EdgeInsets.symmetric(horizontal: 16),
                    //   width: 300,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(20),
                    //   ),
                    //   child: TextFormField(
                    //     decoration: const InputDecoration(
                    //       icon: Icon(Icons.search),
                    //       hintText: 'Pesquise aqui',
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ),
          key: key,
        );
}
