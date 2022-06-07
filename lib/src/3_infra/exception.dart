class FormConvertException implements Exception {
  final String message;

  FormConvertException(this.message);

  @override
  String toString() => message;
}
