import 'dart:developer' as developer;

class Logger {
  final String logName;

  Logger({required this.logName});

  void debug(String message) {
    developer.log(
      message,
      level: 1000,
      name: logName,
      time: DateTime.now(),
    );
  }

  void info(String message) {
    developer.log(
      message,
      level: 0,
      name: logName,
      time: DateTime.now(),
    );
  }

  void error(Object error) {
    developer.log(
      '',
      level: 2000,
      name: logName,
      time: DateTime.now(),
      error: error,
    );
  }
}
