import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    final imagePaths = [
      'assets/images/dog1.jpg',
      'assets/images/dog2.jpg',
      'assets/images/dog3.jpg',
      'assets/images/dog4.jpg',
      'assets/images/dog5.jpg',
      'assets/images/dog6.jpg',
      'assets/images/dog7.jpg',
      'assets/images/dog8.jpg',
      'assets/images/dog9.jpg',
      'assets/images/dog10.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gallery"),
        backgroundColor: const Color.fromARGB(255, 69, 255, 171),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: imagePaths.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(imagePaths[index], fit: BoxFit.cover),
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton.icon(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
          label: const Text("Back"),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 69, 255, 171),
            foregroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 12),
            textStyle: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
