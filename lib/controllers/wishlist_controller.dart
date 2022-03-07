import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:demo_ecommerce/services/services.dart';
import '../models/products.dart';

class WishlistController extends GetxController {
  WishlistService wishlistService = WishlistService();
  List<Product>? products;

  Future<List<Product>?> getProducts() async {
    final response = await wishlistService.getProducts();
    products = response;
    return response;
  }
}
