import 'package:flutter/material.dart';
import 'package:flutter_mix/gallery.dart';
import 'package:flutter_mix/listscreen.dart';
import 'package:flutter_mix/main.dart';
import 'package:get/get.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 67, 255, 183)),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              // Get.offAllNamed('/');
              print("back to home");
            },
          ),
          ListTile(
            title: const Text('Gallery'),
            onTap: () {
              Navigator.pop(context);
              Get.to(() => const Gallery());
            },
          ),
          ListTile(
            title: const Text('Products'),
            onTap: () {
              Navigator.pop(context);
              Get.to(() => const ListSreenPage());
            },
          ),
        ],
      ),
    );
  }
}
