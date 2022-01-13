import 'package:moomool/controllers/auth_controller.dart';
import 'package:moomool/screens/home/agora/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:moomool/screens/home/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../config.dart';

class signFirst extends StatefulWidget {
  const signFirst({Key? key}) : super(key: key);

  @override
  State<signFirst> createState() => _signFirstState();
}

// ignore: camel_case_types
class _signFirstState extends State<signFirst> {
  FirebaseAuth auth = FirebaseAuth.instance;

  User? get userProfile => auth.currentUser;
  User? currentUser;

  var firebaseUser = FirebaseAuth.instance.currentUser;
  final _channelController = TextEditingController();



  User? user;
  late bool isSign ;
  late bool isFirst;


  // @override
  // void initState(){
  //   super.initState();
  //   FirebaseAuth.instance.authStateChanges().listen((event) => updateUserState(event));
  //   //user = event;
  //   //isSign = false;
  //   isFirst = false;
  // }
  // //
  // firestore.collection("users").document("${user}").get().then((DocumentSnapshot ds){
  //   isFirst = ds.data["isFirst"];
  // });

  // updateUserState(event){
  //   setState(() {
  //     user = event;
  //     if(user == null) {
  //       isSign = false;
  //     } else {
  //       isSign = true;
  //     }
  //     final _authController = Get.find<AuthController>();
  //     isFirst = _authController.displayName.toString().capitalizeString();
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    Config().init(context);

    return Scaffold(
      body: GetBuilder<AuthController>(
        builder: (_) {
          print(" 첫번째 사인이냐 아니냐! ${isFirst} ");
          return SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Config.screenWidth! * 0.0),
                child: (isFirst) ? Home() : welcome()),
          );
        },
      ),
    );
  }
}
