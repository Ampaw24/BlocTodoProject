import 'package:bloc/bloc.dart';
import 'package:bloctodoapp/module/todomodule.dart';




class TodoCubitCubit extends Cubit<List<TodoTask>> {
  TodoCubitCubit() : super([]);
  void addTodo(String title){
    final todo = TodoTask(title, DateTime.now());
    state.add(todo);
    emit([...state]);
  }
}
