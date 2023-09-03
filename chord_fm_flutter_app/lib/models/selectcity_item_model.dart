 class SelectcityItemModel {
  String? id;
  String? city;
  String? country;
  bool? isSelected;

  SelectcityItemModel({this.id, this.city, this.country, this.isSelected});

  SelectcityItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    city = json['city'];
    country = json['country'];
    isSelected = json['isSelected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['city'] = this.city;
    data['country'] = this.country;
    data['isSelected'] = this.isSelected;
    return data;
  }
}
