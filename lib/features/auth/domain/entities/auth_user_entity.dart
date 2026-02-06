class AuthUserEntity{
  final int id;
  final String email;
  final String password;
  final bool? isDeleted;

  AuthUserEntity({
    required this.id,
    required this.email,
    required this.password,
    this.isDeleted
  });
}