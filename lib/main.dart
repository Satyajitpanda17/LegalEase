import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:legalease/features/auth/presentations/screens/sign_up_screen.dart';
import 'package:legalease/features/home/presentations/widgets/bootom_nav_bar.dart';
//import 'package:legalease/firebase/firestore/firestore_service.dart';
import 'package:legalease/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  //addAdvocatesToFirestore();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignUpScreen(),
    );
  }
}