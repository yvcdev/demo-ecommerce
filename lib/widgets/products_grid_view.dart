import 'package:demo_ecommerce/utils/utils.dart';
import 'package:demo_ecommerce/widgets/product_card.dart';
import 'package:flutter/material.dart';

import 'package:demo_ecommerce/layouts/layouts.dart';

import '../models/products.dart';

class ProductGirdView extends StatelessWidget {
  const ProductGirdView({Key? key, required this.products, required this.title})
      : super(key: key);

  final Future<List<Product>?> products;
  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Home',
      body: FutureBuilder<List<Product>?>(
        future: products,
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            final products = snapshot.data;

            return Column(
              children: [
                Text(
                  title,
                  style: Constants.normalTextStyle(
                      color: Constants.secondaryAccent),
                ),
                Constants.normalSeparationV,
                Expanded(child: _ListViewBuilder(products: products!)),
              ],
            );
          } else {
            return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const CircularProgressIndicator(
                color: Constants.primaryAccent,
              ),
              Constants.normalSeparationH,
              Text(
                'Loading Products...',
                style: Constants.normalTextStyle(),
              ),
            ]);
          }
        }),
      ),
    );
  }
}

class _ListViewBuilder extends StatelessWidget {
  const _ListViewBuilder({Key? key, required this.products}) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    final gridItems = products.map((product) => ProductCard(
          product: product,
        ));

    return GridView.count(
      crossAxisCount: 3,
      children: [...gridItems],
    );
  }
}
