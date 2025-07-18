import 'package:flutter/material.dart';
import 'package:flutter_mix/components/drawer.dart';
import 'package:flutter_mix/gallery.dart';
import 'package:get/get.dart';
import 'package:flutter_mix/listscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final imageList = <Image>[
      Image.asset('assets/images/dog1.jpg'),
      Image.asset('assets/images/dog2.jpg'),
      Image.asset('assets/images/dog3.jpg'),
      Image.asset('assets/images/dog4.jpg'),
      Image.asset('assets/images/dog5.jpg'),
      Image.asset('assets/images/dog6.jpg'),
      Image.asset('assets/images/dog7.jpg'),
      Image.asset('assets/images/dog8.jpg'),
      Image.asset('assets/images/dog9.jpg'),
      Image.asset('assets/images/dog10.jpg'),
    ];

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My app"),
          backgroundColor: const Color.fromARGB(255, 69, 255, 171),
        ),
        drawer: const MyDrawer(),
        body: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'รายการ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => const Gallery());
                    print("clicke to gallery");
                  },
                  child: Text(
                    'รายการทั้งหมด',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 2, 80, 148),
                    ),
                  ),
                ),
              ],
            ),

            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  itemCount: imageList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/dog${index + 1}.jpg',
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'รายการ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => const ListSreenPage());
                    print("clicke to list all");
                  },
                  child: Text(
                    'รายการทั้งหมด',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 2, 80, 148),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0F7FA),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color.fromARGB(255, 161, 79, 255),
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(
                        "$index",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      tileColor: Colors.transparent,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
