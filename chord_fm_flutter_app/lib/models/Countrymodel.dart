class Countrymodel1{
  int? id;
  String? name;
  String? continent;

  Countrymodel1({
  required  this.id,
  required  this.name,
  required  this.continent,
  });
  Countrymodel1.fromJson(Map<String,dynamic> json){
    id=int.parse(json["id"]);
    name=json["name"];
    continent=json["continent"];
  }
}