import 'dart:io';

import 'package:bazel_worker/driver.dart';
import 'package:path/path.dart' as p;

void main() async {
  var scratchSpace = await Directory.systemTemp.createTemp();
  var driver = BazelWorkerDriver(
      () => Process.start(Platform.resolvedExecutable,
          [p.join(p.absolute(p.current), 'example', 'worker.dart')],
          workingDirectory: scratchSpace.path),
      maxWorkers: 4);
  var response = await driver.doWork(WorkRequest()..arguments.add('foo'));
  if (response.exitCode != EXIT_CODE_OK) {
    print('Worker request failed');
  }
  await driver.terminateWorkers();
}
