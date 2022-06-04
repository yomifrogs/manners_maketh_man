import 'package:logger/logger.dart';

var _logger = Logger(
  printer: PrettyPrinter(colors: true, printEmojis: true),
);

logInfo(String message) => _logger.d(message);

logWarn(String message) => _logger.w(message);

logErr(String message, [dynamic error, StackTrace? stackTrace]) =>
    _logger.e(message, error, stackTrace);
