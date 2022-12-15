// ignore_for_file: empty_constructor_bodies, unused_local_variable, prefer_const_declarations, unnecessary_this

class Priest {
  String firstName, lastName;
  String address;
  int rating;
  Priest(
      {required this.firstName,
      required this.lastName,
      required this.address,
      required this.rating});

  factory Priest.fromJson(Map<String, dynamic> json) {
    return Priest(
        firstName: json['firstName'],
        lastName: json['lastName'],
        address: json['address'],
        rating: json['rating']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> details = new Map<String, dynamic>();
    details['firstName'] = firstName;
    details['lastName'] = lastName;
    details['address'] = address;
    details['rating'] = rating;
    return details;
  }
}
