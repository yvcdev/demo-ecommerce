import 'package:demo_ecommerce/screens/home.dart';
import 'package:demo_ecommerce/screens/login.dart';
import 'package:demo_ecommerce/screens/screens.dart';
import 'package:demo_ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final route = Get.currentRoute;

    return Drawer(
      child: Column(
        children: [
          _ListItemBuilder(
              title: 'Home',
              iconData: Icons.checklist_rtl_rounded,
              onCLick: () {
                if (route == '/Home' || route == '/') {
                  Get.back();
                } else {
                  Get.to(() => const Home());
                }
              }),
          _ListItemBuilder(
              title: 'Wishlist',
              iconData: Icons.checklist_rtl_rounded,
              onCLick: () {
                if (route == '/Wishlist') {
                  Get.back();
                } else {
                  Get.to(() => const Wishlist());
                }
              }),
          const Spacer(),
          _ListItemBuilder(
              title: 'Log Out',
              iconData: Icons.checklist_rtl_rounded,
              onCLick: () {
                Get.offAll(() => const Login());
              })
        ],
      ),
    );
  }
}

class _ListItemBuilder extends StatelessWidget {
  const _ListItemBuilder(
      {Key? key,
      required this.title,
      required this.iconData,
      required this.onCLick,
      this.color = Constants.black})
      : super(key: key);

  final String title;
  final IconData iconData;
  final Function onCLick;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onCLick();
      },
      child: Container(
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Constants.primaryAccent))),
        child: ListTile(
          trailing: Icon(
            iconData,
            color: Constants.primaryAccent,
          ),
          title: Text(
            title,
            style: Constants.normalTextStyleBold(color: color!),
          ),
        ),
      ),
    );
  }
}
