import 'package:flutter_setup_runner/commands/clean_command.dart';
import 'package:flutter_setup_runner/commands/pub_get_command.dart';
import 'package:flutter_setup_runner/commands/pod_install_command.dart';
import 'package:flutter_setup_runner/commands/derived_data_command.dart';

Future<void> main(List<String> arguments) async {
  print('Starting Flutter Setup Runner...');

  try {
    await runFlutterClean();
    await runPubGet();
    await runPodInstall();
    await clearDerivedData();

    print('Flutter project setup completed successfully.');
  } catch (e) {
    print('Setup failed: $e');
  }
}
