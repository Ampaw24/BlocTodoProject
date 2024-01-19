import 'package:bloctodoapp/addtodo.dart';
import 'package:bloctodoapp/cubit/todo_cubit_cubit.dart';
import 'package:bloctodoapp/todolist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubitCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        routes: {
          '/': (_) => const Todolist(),
          '/add_todo': (_) => const AddTodoList()
        },
      ),
    );
  }
}
