import 'package:bloctodoapp/cubit/todo_cubit_cubit.dart';
import 'package:bloctodoapp/module/todomodule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Todolist extends StatelessWidget {
  const Todolist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Todo's"),),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add todo',
        child: const Icon(Icons.add,color: Colors.white,),
        onPressed: ()=>Navigator.pushNamed(context, '/add_todo')),
      body:BlocBuilder<TodoCubitCubit,List<TodoTask>>(
        builder: (context,state){
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (context,index){
            final todo = state[index];
              return ListTile(
                title: Text(todo.task),
              );
          });
        }),
    );
  }
}