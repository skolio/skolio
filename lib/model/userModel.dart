class UserModel {
  String uid;
  String username;
  String email;

  UserModel.fromMap(Map data) {
    uid = data["uid"];
    username = data["username"];
    email = data["email"];
  }
}
