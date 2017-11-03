// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library blaze.worker_worker_protocol;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;
import 'package:protobuf/protobuf.dart';

class Input extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Input')
    ..a<String>(1, 'path', PbFieldType.OS)
    ..a<List<int>>(2, 'digest', PbFieldType.OY)
    ..hasRequiredFields = false;

  Input() : super();
  Input.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  Input.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  Input clone() => new Input()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Input create() => new Input();
  static PbList<Input> createRepeated() => new PbList<Input>();
  static Input getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyInput();
    return _defaultInstance;
  }

  static Input _defaultInstance;
  static void $checkItem(Input v) {
    if (v is! Input) checkItemFailed(v, 'Input');
  }

  String get path => $_get(0, 1, '');
  set path(String v) {
    $_setString(0, 1, v);
  }

  bool hasPath() => $_has(0, 1);
  void clearPath() => clearField(1);

  List<int> get digest => $_get(1, 2, null);
  set digest(List<int> v) {
    $_setBytes(1, 2, v);
  }

  bool hasDigest() => $_has(1, 2);
  void clearDigest() => clearField(2);
}

class _ReadonlyInput extends Input with ReadonlyMessageMixin {}

class WorkRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('WorkRequest')
    ..p<String>(1, 'arguments', PbFieldType.PS)
    ..pp<Input>(2, 'inputs', PbFieldType.PM, Input.$checkItem, Input.create)
    ..hasRequiredFields = false;

  WorkRequest() : super();
  WorkRequest.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  WorkRequest.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  WorkRequest clone() => new WorkRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static WorkRequest create() => new WorkRequest();
  static PbList<WorkRequest> createRepeated() => new PbList<WorkRequest>();
  static WorkRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyWorkRequest();
    return _defaultInstance;
  }

  static WorkRequest _defaultInstance;
  static void $checkItem(WorkRequest v) {
    if (v is! WorkRequest) checkItemFailed(v, 'WorkRequest');
  }

  List<String> get arguments => $_get(0, 1, null);

  List<Input> get inputs => $_get(1, 2, null);
}

class _ReadonlyWorkRequest extends WorkRequest with ReadonlyMessageMixin {}

class WorkResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('WorkResponse')
    ..a<int>(1, 'exitCode', PbFieldType.O3)
    ..a<String>(2, 'output', PbFieldType.OS)
    ..hasRequiredFields = false;

  WorkResponse() : super();
  WorkResponse.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  WorkResponse.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  WorkResponse clone() => new WorkResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static WorkResponse create() => new WorkResponse();
  static PbList<WorkResponse> createRepeated() => new PbList<WorkResponse>();
  static WorkResponse getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyWorkResponse();
    return _defaultInstance;
  }

  static WorkResponse _defaultInstance;
  static void $checkItem(WorkResponse v) {
    if (v is! WorkResponse) checkItemFailed(v, 'WorkResponse');
  }

  int get exitCode => $_get(0, 1, 0);
  set exitCode(int v) {
    $_setUnsignedInt32(0, 1, v);
  }

  bool hasExitCode() => $_has(0, 1);
  void clearExitCode() => clearField(1);

  String get output => $_get(1, 2, '');
  set output(String v) {
    $_setString(1, 2, v);
  }

  bool hasOutput() => $_has(1, 2);
  void clearOutput() => clearField(2);
}

class _ReadonlyWorkResponse extends WorkResponse with ReadonlyMessageMixin {}
