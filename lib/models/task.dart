import 'package:realm/realm.dart';
part 'task.g.dart';

@RealmModel()
class _Task {
  late final String title;
  bool? isDone;
  bool? isDeleted;
}