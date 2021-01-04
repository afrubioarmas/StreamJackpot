import 'package:equatable/equatable.dart';

class User extends Equatable {
  static const String ATTRIBUTE_ID = "id";
  static const String ATTRIBUTE_NAME = "name";
  static const String ATTRIBUTE_EMAIL = "email";
  static const String ATTRIBUTE_IMAGE_URL = "imageUrl";

  String id;
  String name;
  String email;
  String imageUrl;

  User({
    this.id,
    this.name,
    this.email,
    this.imageUrl,
  });

  User.empty() {
    id = "";
    name = "";
    email = "";
    imageUrl = "";
  }

  User.fromJson(dynamic json) {
    id = json[ATTRIBUTE_ID];
    name = json[ATTRIBUTE_NAME];
    email = json[ATTRIBUTE_EMAIL];
    imageUrl = json[ATTRIBUTE_IMAGE_URL];
  }

  dynamic toJson() {
    return {
      ATTRIBUTE_ID: id,
      ATTRIBUTE_NAME: name,
      ATTRIBUTE_EMAIL: email,
      ATTRIBUTE_IMAGE_URL: imageUrl,
    };
  }

  @override
  List<Object> get props => [id, name, email, imageUrl];

  void clone(User toClone) {
    id = toClone.id;
    name = toClone.name;
    email = toClone.email;
    imageUrl = toClone.imageUrl;
  }

  bool isEmptyLoggedUser() {
    return name == "" || imageUrl == null;
  }
}
