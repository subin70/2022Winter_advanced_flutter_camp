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

  //late bool isFirst;
  // firebase 콜렉션에 isFirst 라는 변수 가져와서
  // true면 -> welcome 페이지로
  // false 면 -> home 페이지로
  // welcome 으로 넘어가면 이제 isFirst 변수 true-> false 로 바꿔주기

  //fb collection에서 isFirst 저장
  late bool isFirst = false;

  // @override
  // void initState() {
  //   super.initState();
  //   getUserDoc();
  // }
  //             .data()!['isFirst'];
  //   print(isFirst);
  // }

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    getUserDoc() {
      final FirebaseAuth _auth = FirebaseAuth.instance;
      final FirebaseFirestore _firestore = FirebaseFirestore.instance;
      User? user = _auth.currentUser!;
      _firestore.collection("users").doc(user.uid).get()
          .then((DocumentSnapshot ds) {
        isFirst = ds.get("isFirst");
      });
    }
    getUserDoc();
    return Scaffold(
      body: GetBuilder<AuthController>(
        builder: (_) {
          print(" 첫번째 사인이냐 아니냐! ${isFirst} ");
          return SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Config.screenWidth! * 0.0),
                child: (isFirst) ? welcome():  Home()),
          );
        },
      ),
    );
  }
}
