import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/remote_data/bloc_observe.dart';
import 'package:football_app/remote_data/remote_data.dart';
import 'package:football_app/screens/home_screen.dart';
import 'cubit/football_cubit.dart';

void main() {
  DioHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const FootballApp());
}

class FootballApp extends StatelessWidget {
  const FootballApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FootballCubit()..getResults(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocConsumer<FootballCubit, FootballState>(
          listener: (context, state) {},
          builder: (context, state) {
            return const HomeScreen();
          },
        ),
      ),
    );
  }
}

