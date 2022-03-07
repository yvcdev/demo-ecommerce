import 'dart:convert';

import 'package:demo_ecommerce/models/models.dart';
import 'package:http/http.dart' as http;

class WishlistService {
  Future<List<Product>?> getProducts() async {
    try {
      final response =
          await http.get(Uri.parse('http://localhost:3001/products'));
      List<Product> _products = [];

      if (response.statusCode == 200) {
        final responseJson = jsonDecode(response.body);
        List products = responseJson['response'];

        for (var product in products) {
          final _product = Product.fromJson(product);
          _products.add(_product);
        }

        return _products;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
