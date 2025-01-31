// To parse this JSON data, do
//
//     final advocateModel = advocateModelFromJson(jsonString);

import 'dart:convert';

List<AdvocateModel> advocateModelFromJson(String str) => List<AdvocateModel>.from(json.decode(str).map((x) => AdvocateModel.fromJson(x)));

String advocateModelToJson(List<AdvocateModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AdvocateModel {
    String name;
    List<String> expertise;
    String location;
    String mobile;
    dynamic experience;
    String bio;
    List<String> languages;
    dynamic rating;

    AdvocateModel({
        required this.name,
        required this.expertise,
        required this.location,
        required this.mobile,
        required this.experience,
        required this.bio,
        required this.languages,
        required this.rating,
    });

    factory AdvocateModel.fromJson(Map<String, dynamic> json) => AdvocateModel(
        name: json["name"],
        expertise: List<String>.from(json["expertise"].map((x) => x)),
        location: json["location"],
        mobile: json["mobile"],
        experience: json["experience"],
        bio: json["bio"],
        languages: List<String>.from(json["languages"].map((x) => x)),
        rating: json["rating"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "expertise": List<dynamic>.from(expertise.map((x) => x)),
        "location": location,
        "mobile": mobile,
        "experience": experience,
        "bio": bio,
        "languages": List<dynamic>.from(languages.map((x) => x)),
        "rating": rating,
    };
}
