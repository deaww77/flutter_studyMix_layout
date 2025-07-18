import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListSreenPage extends StatefulWidget {
  const ListSreenPage({super.key});

  @override
  State<ListSreenPage> createState() => _ListSreenPageState();
}

class _ListSreenPageState extends State<ListSreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Screen"),
        backgroundColor: const Color.fromARGB(255, 69, 255, 171),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton.icon(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
          label: const Text("Back to Home"),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 205, 55, 255),
            foregroundColor: const Color.fromARGB(255, 100, 255, 164),
            padding: const EdgeInsets.symmetric(vertical: 12),
            textStyle: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
