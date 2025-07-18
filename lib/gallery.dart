import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    final iconList = <IconData>[
      Icons.ac_unit,
      Icons.access_alarm,
      Icons.accessibility,
      Icons.account_balance,
      Icons.adb,
      Icons.airplanemode_active,
      Icons.album,
      Icons.backup,
      Icons.cake,
      Icons.dashboard,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gallery"),
        backgroundColor: const Color.fromARGB(255, 69, 255, 171),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            itemCount: iconList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Icon(iconList[index], size: 50, color: Colors.blue),
              );
            },
          ),
        ),
      ),
    );
  }
}
