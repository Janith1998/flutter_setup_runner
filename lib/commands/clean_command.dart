import '../utils/logger.dart';
import '../utils/process_runner.dart';

Future<void> runFlutterClean() async {
  logInfo('Running flutter clean...');

  await runCommand('flutter', ['clean']);

  logSuccess('Flutter clean completed');
}
