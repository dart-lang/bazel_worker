import 'dart:io';

import 'package:bazel_worker/driver.dart';
import 'package:path/path.dart' as p;

void main() async {
  var scratchSpace = await Directory.systemTemp.createTemp();
  var driver = BazelWorkerDriver(
      () => Process.start(
          Platform.resolvedExecutable, [p.join('example', 'worker.dart')],
          workingDirectory: scratchSpace.path),
      maxWorkers: 4);
  driver.doWork(WorkRequest()..arguments.add('foo'));
}
