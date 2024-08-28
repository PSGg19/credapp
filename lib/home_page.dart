import 'package:flutter/material.dart';
import 'api_service.dart';
import 'item_data.dart';
import 'list_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<ItemData>> futureItems;

  @override
  void initState() {
    super.initState();
    futureItems = fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder<List<ItemData>>(
        future: futureItems,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final items = snapshot.data ?? [];
            return SingleChildScrollView(
              child: Column(
                children: items.map((item) => Items(itemData: item)).toList(),
              ),
            );
          }
        },
      ),
    );
  }
}
