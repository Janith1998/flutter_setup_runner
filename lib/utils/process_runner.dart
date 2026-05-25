import 'dart:io';

Future<void> runCommand(String command, List<String> args) async {
  final result = await Process.run(command, args);

  stdout.write(result.stdout);
  stderr.write(result.stderr);

  if (result.exitCode != 0) {
    throw Exception('Command failed');
  }
}
