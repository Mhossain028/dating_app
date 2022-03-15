import 'package:flutter/material.dart';
import 'blocs/swipe/swipe_bloc.dart';
import 'home/home_screen.dart';
import 'models/user_model.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    MultiBlocProvider(
      providers: [
        BlocProvider<SwipeBloc>(
          create: (context) => SwipeBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );

    HomeScreen();
  }
}

