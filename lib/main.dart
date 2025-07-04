import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My app"),
          backgroundColor: const Color.fromARGB(255, 69, 255, 171),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('รายการ')],
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  itemCount: iconList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: Icon(
                        iconList[index],
                        size: 50,
                        color: Colors.blue,
                      ),
                    );
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('รายการ')],
            ),
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
