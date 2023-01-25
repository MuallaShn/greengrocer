class user {

  final int id;
  final String name;
  final String surname;
  final String? userName;
  final String email;
  final String? avatarURL;
  final String schoolName;
  final List<String>? friendList;
  final Map<String, dynamic>?LikedPost;

  user({
    required this.id,
    required this.name,
    required this.surname,
    this.userName,
    required this.email,
    this.avatarURL,
    required this.schoolName,
    this.friendList,
    this.LikedPost});
}


