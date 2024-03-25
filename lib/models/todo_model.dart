// title
//description
//completed
// createdat

import 'package:hive_flutter/adapters.dart';

part 'todo_model.g.dart';

// The line part 'todo_model.g.dart'; is a directive in Dart used to specify
// that the contents of the file are part of another file.
// In this case, it's used in conjunction with code generation.
@HiveType(typeId: 0)
class Todo{
  @HiveField(0)
  late String title;

 @HiveField(1)
  late String description;

  @HiveField(2)
  late DateTime createdAt;

  @HiveField(3)
  late bool completed;


  Todo({
    required this.title,
    required this.description,
    required this.createdAt,
    required this.completed
});


}