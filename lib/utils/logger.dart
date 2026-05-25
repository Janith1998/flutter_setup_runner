import 'package:ansi_styles/ansi_styles.dart';

void logInfo(String message) {
  print(AnsiStyles.blue(message));
}

void logSuccess(String message) {
  print(AnsiStyles.green(message));
}

void logWarning(String message) {
  print(AnsiStyles.yellow(message));
}

void logError(String message) {
  print(AnsiStyles.red(message));
}
