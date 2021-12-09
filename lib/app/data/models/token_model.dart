class TokenModel {
  String accessToken;
  String tokenType;
  int expiresIn;
  String credentials;

  TokenModel({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.credentials,
  });

  factory TokenModel.fromJson(Map<String, dynamic> json) => TokenModel(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        expiresIn: json["expires_in"],
        credentials: json["credentials"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "expires_in": expiresIn,
        "credentials": credentials,
      };
}
