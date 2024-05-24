class StModel {
  String? name;
  String? email;
  String? id;

  StModel({required this.name, required this.email, required this.id});
  StModel.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    email = json["email"];
    id = json["id"];
  }
  Map<String, dynamic> toJson() {
    return {"name": name, "email": email, "id": id};
  }
}
