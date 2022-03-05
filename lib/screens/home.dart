import 'package:flutter/material.dart';

import 'package:demo_ecommerce/layouts/layouts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Text('Home'),
    );
  }
}
