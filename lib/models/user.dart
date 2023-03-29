class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 026,
      name: "Rendi Alinurdin",
      username: "rendial26",
      email: "2006030@itg.ac.id",
      profilePhoto:
          "https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2022/06/13/871363699.jpg",
      phoneNumber: "083830560444",
    );
  }
}