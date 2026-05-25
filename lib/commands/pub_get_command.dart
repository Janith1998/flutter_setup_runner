import '../utils/logger.dart';
import '../utils/process_runner.dart';

Future<void> runPubGet() async {
  logInfo('Running flutter pub get...');

  await runCommand('flutter', ['pub', 'get']);

  logSuccess('Dependencies installed');
}
