class UserModel {
  final String messaage;
  final String name;
  final String channelName;
  final int contact;
  final String image;

  UserModel({
    required this.messaage,
    required this.name,
    required this.channelName,
    required this.contact,
    required this.image,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      messaage: json['messaage'],
      name: json['name'],
      channelName: json['channel_name'],
      contact: json['contact'],
      image: json['image'],
    );
  }
}
