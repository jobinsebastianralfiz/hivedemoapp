import 'package:hive_flutter/hive_flutter.dart';
import 'package:hivedemo/models/todo_model.dart';

class TodoService {
  Box<Todo>? _todoBox;

  Future<void> openBox() async {
    _todoBox = await Hive.openBox<Todo>('todos');
  }

  Future<void> closeBox() async {
    await _todoBox!.close();
  }

  // add to do

  Future<void> addTodo(Todo todo) async {
    if (_todoBox == null) {
      await openBox();
    }
    await _todoBox!.add(todo);
  }

  Future<List<Todo>> getTodos() async {
    if (_todoBox == null) {
      await openBox();
    }

    return _todoBox!.values.toList();
  }

  Future<void> updateTodo(int index, Todo todo) async {
    if (_todoBox == null) {
      await openBox();
    }

    await _todoBox!.putAt(index, todo);
    print("updated");
  }

  Future<void> deleteTodo(int index) async {
    if (_todoBox == null) {
      await openBox();
    }

    await _todoBox!.deleteAt(index);
  }
}
