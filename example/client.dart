import 'dart:io';

import 'package:bazel_worker/driver.dart';
import 'package:path/path.dart' as p;

final sdkDir = p.dirname(p.dirname(Platform.resolvedExecutable));

void main() async {
  var scratchSpace = await Directory.systemTemp.createTemp();
  var driver = BazelWorkerDriver(
      () => Process.start(
          p.join(sdkDir, 'bin', 'dart'), [p.join('example', 'worker.dart')],
          workingDirectory: scratchSpace.path),
      maxWorkers: 4);
  driver.doWork(WorkRequest()..arguments.add('foo'));
}
