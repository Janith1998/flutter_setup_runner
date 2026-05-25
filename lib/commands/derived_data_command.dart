import 'dart:io';

import '../utils/logger.dart';

Future<void> clearDerivedData() async {
  if (!Platform.isMacOS) {
    logWarning('Skipping derived data cleanup');
    return;
  }

  logInfo('Clearing Xcode derived data...');

  await Process.run('bash', [
    '-c',
    'rm -rf ~/Library/Developer/Xcode/DerivedData',
  ]);

  logSuccess('Derived data cleared');
}
