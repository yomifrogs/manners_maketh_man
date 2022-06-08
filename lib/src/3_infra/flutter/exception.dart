enum CheckedExceptionType { invalidText, invalidSerialNo }

class CheckedException implements Exception {
  final dynamic error;
  final CheckedExceptionType type;
  final dynamic stackTrace;

  CheckedException({required this.error, required this.type, this.stackTrace});

  @override
  String toString() => error.toString();
}

class InvalidAuthException implements Exception {
  final dynamic error;
  final dynamic stackTrace;

  InvalidAuthException({required this.error, this.stackTrace});

  @override
  String toString() => error.toString();
}

enum RuntimeExceptionType { badResponse }

class RuntimeException implements Exception {
  final dynamic error;
  final RuntimeExceptionType type;
  final dynamic stackTrace;

  RuntimeException({required this.error, required this.type, this.stackTrace});

  @override
  String toString() => error.toString();
}
