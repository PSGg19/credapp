class ItemData {
  final String name;
  final String description;
  final String iconUrl;

  ItemData(
      {required this.name, required this.description, required this.iconUrl});

  factory ItemData.fromJson(Map<String, dynamic> json) {
    return ItemData(
      name: json['display_data']['name'],
      description: json['display_data']['description'],
      iconUrl: json['display_data']['icon_url'],
    );
  }
}
