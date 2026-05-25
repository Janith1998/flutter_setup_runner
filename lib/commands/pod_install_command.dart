import 'dart:io';

import '../utils/logger.dart';

Future<void> runPodInstall() async {
  if (!Directory('ios').existsSync()) {
    logWarning('iOS folder not found');
    return;
  }

  logInfo('Running pod install...');

  final result = await Process.run('bash', ['-c', 'cd ios && pod install']);

  stdout.write(result.stdout);
  stderr.write(result.stderr);

  logSuccess('Pod install completed');
}
