import 'package:demo_ecommerce/controllers/controllers.dart';
import 'package:demo_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsController = Get.put(ProductsController());

    return ProductGirdView(
        appBarTitle: 'Home',
        title: 'Our Products',
        products: productsController.getProducts());
  }
}
