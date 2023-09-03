class RadioTileItemModel {
  String? id;
  String? name;
  String? country;
  bool? isSelected;
  String? language;
  String? imageUrl;

  RadioTileItemModel(
      {this.id,
      this.name,
      this.country,
      this.isSelected,
      this.language,
      this.imageUrl});

  RadioTileItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    country = json['country'];
    isSelected = json['isSelected'];
    language = json['language'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['country'] = this.country;
    data['isSelected'] = this.isSelected;
    data['language'] = this.language;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}
