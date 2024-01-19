import 'package:bloc/bloc.dart';
import 'package:bloctodoapp/module/todomodule.dart';
import 'package:meta/meta.dart';

part 'todo_bloc_event.dart';
part 'todo_bloc_state.dart';

class TodoBlocBloc extends Bloc<TodoBlocEvent, List<TodoTask>> {
  TodoBlocBloc() : super([]) {
    
    on<addTaskEvent>((event, emit) {
      
     
    });
  }
}
