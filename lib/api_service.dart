import 'package:http/http.dart' as http;
import 'dart:convert';
import 'item_data.dart';

Future<List<ItemData>> fetchItems() async {
  final response =
      await http.get(Uri.parse('https://api.mocklets.com/p6839/explore-cred'));

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(response.body);
    final sections = jsonResponse['sections'] as List;
    List<ItemData> items = [];

    for (var section in sections) {
      final sectionItems = section['template_properties']['items'] as List;
      for (var item in sectionItems) {
        items.add(ItemData.fromJson(item));
      }
    }
    return items;
  } else {
    throw Exception('Failed to load items');
  }
}
