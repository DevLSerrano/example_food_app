import 'package:example_food_app/models/menu_model.dart';
import 'package:example_food_app/models/product_model.dart';
import 'package:example_food_app/modules/home/components/icon_menu.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FakeData {
  Future<List<MenuModel>> getTypesMenu() async {
    return await Future.delayed(
      const Duration(seconds: 1),
      () {
        return [
          MenuModel(
            index: null,
            icon: const Icon(MdiIcons.food),
            title: 'Todos',
          ),
          MenuModel(
            index: 0,
            icon: const Icon(MdiIcons.pizza),
            title: 'Pizza',
          ),
          MenuModel(
            index: 1,
            icon: const Icon(MdiIcons.apple),
            title: 'Frutas',
          ),
          MenuModel(
            index: 2,
            icon: const Icon(MdiIcons.foodDrumstick),
            title: 'Frango',
          ),
          MenuModel(
            index: 3,
            icon: const Icon(MdiIcons.foodCroissant),
            title: 'Massas',
          ),
          MenuModel(
            index: 4,
            icon: const Icon(MdiIcons.hamburger),
            title: 'Lanches',
          ),
          MenuModel(
            index: 5,
            icon: const Icon(MdiIcons.noodles),
            title: 'Sopas',
          ),
        ];
      },
    );
  }

  Future<List<ProductModel>> getProductForMenu({int? index}) async {
    return await Future.delayed(
      const Duration(seconds: 1),
      () {
        final products = [
          //Pizzas
          ProductModel(
            index: 0,
            image:
                'http://folhadomate.com/wp-content/uploads/2016/09/48478-calorias-da-mussarela.jpg',
            score: 3.1,
            timeInMinutes: 15,
            title: 'Pizza de Mussarela',
          ),
          ProductModel(
            index: 0,
            image:
                'http://static.clubedaanamariabraga.com.br/wp-content/uploads/2019/02/pizza-de-frango-com-catupiry-18845.jpg',
            score: 4.1,
            timeInMinutes: 20,
            title: 'Pizza de Frango com Catupiry',
          ),
          ProductModel(
            index: 0,
            image:
                'https://www.receiteria.com.br/wp-content/uploads/receitas-de-pizza-baiana-0.jpg',
            score: 4.1,
            timeInMinutes: 20,
            title: 'Pizza baiana',
          ),
          ProductModel(
            index: 0,
            image:
                'https://www.ocladapizza.com.br/wp-content/uploads/2016/12/3-fatos-sobre-a-pizza-portuguesa-que-voce-nao-fazia-ideia-artigo-blog-pizzaria-o-cla-da-pizza-640x420.jpg',
            score: 3.5,
            timeInMinutes: 20,
            title: 'Pizza Portuguesa',
          ),

          //!Frutas
          ProductModel(
            index: 1,
            image:
                'https://img.itdg.com.br/tdg/images/blog/uploads/2017/05/shutterstock_290834552.jpg',
            score: 5.0,
            timeInMinutes: 0,
            title: 'Maça',
          ),
          ProductModel(
            index: 1,
            image:
                'https://st2.depositphotos.com/3279657/5447/i/600/depositphotos_54478619-stock-photo-blue-wet-grapes-bunch-isolated.jpg',
            score: 5.0,
            timeInMinutes: 0,
            title: 'Uva',
          ),

          //!Frango
          ProductModel(
            index: 2,
            image:
                'https://www.comidaereceitas.com.br/img/sizeswp/1200x675/2011/02/coxas_frango_molho.jpg',
            score: 5.0,
            timeInMinutes: 0,
            title: 'Frango ao Molho',
          ),
          ProductModel(
            index: 2,
            image:
                'https://ncultura.pt/wp-content/uploads/2020/04/cover-02.jpg',
            score: 5.0,
            timeInMinutes: 0,
            title: 'Frango Assado',
          ),
        ];
        if (index != null) {
          products.removeWhere((element) => element.index != index);
          return products;
        } else {
          ///null is all
          return products;
        }
      },
    );
  }
}
