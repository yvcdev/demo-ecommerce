import 'package:demo_ecommerce/controllers/controllers.dart';
import 'package:demo_ecommerce/controllers/wishlist_controller.dart';
import 'package:demo_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wishlistController = Get.put(WishlistController());

    return ProductGirdView(
        appBarTitle: 'Wishlist',
        title: 'Your list',
        products: wishlistController.getProducts());
  }
}
