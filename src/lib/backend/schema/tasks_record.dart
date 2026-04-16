import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "completed_tasks" field.
  int? _completedTasks;
  int get completedTasks => _completedTasks ?? 0;
  bool hasCompletedTasks() => _completedTasks != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "task_name" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  bool hasTaskName() => _taskName != null;

  // "task_completed" field.
  bool? _taskCompleted;
  bool get taskCompleted => _taskCompleted ?? false;
  bool hasTaskCompleted() => _taskCompleted != null;

  // "toFinishTime" field.
  DateTime? _toFinishTime;
  DateTime? get toFinishTime => _toFinishTime;
  bool hasToFinishTime() => _toFinishTime != null;

  // "time_finished" field.
  DateTime? _timeFinished;
  DateTime? get timeFinished => _timeFinished;
  bool hasTimeFinished() => _timeFinished != null;

  void _initializeFields() {
    _owner = snapshotData['owner'] as DocumentReference?;
    _description = snapshotData['description'] as String?;
    _completedTasks = castToType<int>(snapshotData['completed_tasks']);
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _taskName = snapshotData['task_name'] as String?;
    _taskCompleted = snapshotData['task_completed'] as bool?;
    _toFinishTime = snapshotData['toFinishTime'] as DateTime?;
    _timeFinished = snapshotData['time_finished'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksRecordData({
  DocumentReference? owner,
  String? description,
  int? completedTasks,
  DateTime? timeCreated,
  String? taskName,
  bool? taskCompleted,
  DateTime? toFinishTime,
  DateTime? timeFinished,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'owner': owner,
      'description': description,
      'completed_tasks': completedTasks,
      'time_created': timeCreated,
      'task_name': taskName,
      'task_completed': taskCompleted,
      'toFinishTime': toFinishTime,
      'time_finished': timeFinished,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    return e1?.owner == e2?.owner &&
        e1?.description == e2?.description &&
        e1?.completedTasks == e2?.completedTasks &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.taskName == e2?.taskName &&
        e1?.taskCompleted == e2?.taskCompleted &&
        e1?.toFinishTime == e2?.toFinishTime &&
        e1?.timeFinished == e2?.timeFinished;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.owner,
        e?.description,
        e?.completedTasks,
        e?.timeCreated,
        e?.taskName,
        e?.taskCompleted,
        e?.toFinishTime,
        e?.timeFinished
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
