class ApiResult {
  final dynamic drinks;

  ApiResult({
    required this.drinks,
  });

  factory ApiResult.fromJson(Map<String, dynamic> json) {
    // print(json['drinks']);
    return ApiResult(
      drinks: json['drinks'],
    );
  }
}
