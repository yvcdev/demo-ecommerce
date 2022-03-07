import 'package:demo_ecommerce/utils/number_formats.dart';
import 'package:demo_ecommerce/utils/utils.dart';
import 'package:demo_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../models/products.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text(
                product.name,
                textAlign: TextAlign.center,
                style: Constants.normalTextStyle(),
              ),
            ),
            ListTile(
              title: Text(
                NumberFormats.toFormattedPrice(product.price),
                textAlign: TextAlign.center,
                style: Constants.smallTextStyle(color: Constants.primaryAccent),
              ),
            ),
            Constants.normalSeparationV,
            SizedBox(
                height: 200,
                width: 200,
                child: product.image == null
                    ? Image.asset(
                        'assets/fetching_data.png',
                      )
                    : FadeInImage(
                        height: 200,
                        placeholder:
                            const AssetImage('assets/fetching_data.png'),
                        image: NetworkImage(product.image!))),
            Constants.normalSeparationV,
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                CustomTextButton(title: '+ Wishist', onClick: () {}),
                CustomTextButton(title: '+ Shopping Cart', onClick: () {}),
              ],
            ),
            ListTile(
              title: Text(
                product.quantity <= 0
                    ? 'Out of Stock'
                    : '${product.quantity} in Stock',
                textAlign: TextAlign.center,
                style: Constants.smallTextStyle(
                    color: product.quantity <= 0
                        ? Constants.red
                        : Constants.secondaryAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
