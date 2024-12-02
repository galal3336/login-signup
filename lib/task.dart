import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewExample(),
    );
  }
}

class GridViewExample extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'icon': Icons.directions_car, 'label': 'Car', 'color': Colors.lightBlue},
    {'icon': Icons.directions_bike, 'label': 'Bicycle', 'color': Colors.blueGrey},
    {'icon': Icons.directions_boat, 'label': 'Boat', 'color': Colors.grey},
    {'icon': Icons.directions_bus, 'label': 'Bus', 'color': Colors.brown},
    {'icon': Icons.train, 'label': 'Train', 'color': Colors.deepOrange},
    {'icon': Icons.directions_walk, 'label': 'Walk', 'color': Colors.greenAccent},
    {'icon': Icons.contact_page, 'label': 'Contact', 'color': Colors.teal},
    {'icon': Icons.duo, 'label': 'Duo', 'color': Colors.green},
    {'icon': Icons.hourglass_empty, 'label': 'Hour', 'color': Colors.pink},
    {'icon': Icons.mobile_friendly, 'label': 'Mobile', 'color': Colors.purple},
    {'icon': Icons.message, 'label': 'Message', 'color': Colors.brown},
    {'icon': Icons.vpn_key, 'label': 'Key', 'color': Colors.lightGreen},
    {'icon': Icons.wifi, 'label': 'Wifi', 'color': Colors.blue},
    {'icon': Icons.bluetooth, 'label': 'Bluetooth', 'color': Colors.purpleAccent},
    {'icon': Icons.sentiment_satisfied, 'label': 'Smile', 'color': Colors.cyan},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Builder'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // عدد الأعمدة
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Container(
              decoration: BoxDecoration(
                color: item['color'],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(item['icon'], size: 40, color: Colors.black),
                  SizedBox(height: 8),
                  Text(
                    item['label'],
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}