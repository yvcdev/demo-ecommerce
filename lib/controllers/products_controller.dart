import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:demo_ecommerce/services/services.dart';
import '../models/products.dart';

class ProductsController extends GetxController {
  ProductsService productsService = ProductsService();
  List<Product>? products;

  Future<List<Product>?> getProducts() async {
    final response = await productsService.getProducts();
    products = response;
    return response;
  }
}
