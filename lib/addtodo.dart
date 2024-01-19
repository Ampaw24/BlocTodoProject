import 'package:bloctodoapp/cubit/todo_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTodoList extends StatefulWidget {
  const AddTodoList({super.key});

  @override
  State<AddTodoList> createState() => _AddTodoListState();
}
final taskController = TextEditingController();
class _AddTodoListState extends State<AddTodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Todo"),),

      body: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: taskController,
                decoration: const InputDecoration(
                  hintText: "Enter Task"
                ),
              ),
            ),
            const SizedBox(height: 30,),
            ElevatedButton.icon(onPressed: (){
              BlocProvider.of<TodoCubitCubit>(context).addTodo(taskController.text.trim());
            }, icon: Icon(Icons.add), label: Text("Add Todo Task"))
          ],
        ),
      ),
    );
  }
}