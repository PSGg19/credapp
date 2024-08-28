import 'package:flutter/material.dart';
import 'item_data.dart';

class Items extends StatelessWidget {
  final ItemData itemData;

  const Items({super.key, required this.itemData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.black,
      child: Row(
        children: [
          // Square box with image
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(itemData.iconUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text description
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 13, 159, 233),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(itemData.name, style: TextStyle(color: Colors.white)),
                    Text(itemData.description,
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
