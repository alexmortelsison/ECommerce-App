import 'package:ecommerce_app/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(height: 25),
              MyListTile(
                text: 'Shop',
                icon: Icons.home_outlined,
                onTap: () => Navigator.pop(context),
              ),
              MyListTile(
                text: 'Cart',
                icon: Icons.shopping_cart_outlined,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/cart_page');
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(
              text: 'Log Out',
              icon: Icons.logout,
              onTap: () => Navigator.pushNamed(context, '/intro_page'),
            ),
          ),
        ],
      ),
    );
  }
}
