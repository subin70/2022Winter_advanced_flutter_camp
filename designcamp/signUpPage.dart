import '../main.dart';
import 'package:flutter/material.dart';
import '../Config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'emailLoginPage.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'loginPage.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

// ignore: camel_case_types



class signUpPage extends StatefulWidget {


  @override
  signUp createState()=>signUp();
}

class signUp extends State<signUpPage> {
  bool _checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,),
        centerTitle: true,
        title: Text('회원가입',
          style: TextStyle(fontSize: ScreenUtil().setSp(18),
              color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // SizedBox(height: ScreenUtil().setHeight(77)),
                // Text('회원가입 ',
                //   style: TextStyle(fontSize: ScreenUtil().setSp(18)),),
                SizedBox(height: ScreenUtil().setHeight(87)),

                Container(
                  height: ScreenUtil().setHeight(43),
                  width: ScreenUtil().setWidth(287),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '이메일',
                      contentPadding: EdgeInsets.all(15.0),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(33.0)),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),

                SizedBox(height: ScreenUtil().setHeight(18)),
                Container(
                  height: ScreenUtil().setHeight(43),
                  width: ScreenUtil().setWidth(287),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '비밀번호',
                      contentPadding: EdgeInsets.all(15.0),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(33.0)),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                SizedBox(height: ScreenUtil().setHeight(18)),
                Container(
                  height: ScreenUtil().setHeight(43),
                  width: ScreenUtil().setWidth(287),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '비밀번호 확인',
                      contentPadding: EdgeInsets.all(15.0),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(33.0)),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                SizedBox(height: ScreenUtil().setHeight(18)),
                Container(
                  height: ScreenUtil().setHeight(43),
                  width: ScreenUtil().setWidth(287),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '닉네임',
                      contentPadding: EdgeInsets.all(15.0),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(33.0)),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                SizedBox(height: ScreenUtil().setHeight(235)),
                SizedBox(
                    height: ScreenUtil().setHeight(55),
                    width: ScreenUtil().setHeight(400),
                    child: ElevatedButton(
                      onPressed: () {
                        Dialogs.bottomMaterialDialog(
                            context: context,
                            actions: [
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('이용약관 ',
                                        style: TextStyle(
                                          fontSize: ScreenUtil().setSp(18),
                                        ),
                                      )
                                      // IconButton(onPressed: (){},
                                      //     icon: Icon(Icons.done))
                                    ],
                                  ),
                                  SizedBox(height: ScreenUtil().setHeight(50)),
                                  Row(
                                      children: [
                                        Checkbox(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          checkColor: Colors.white,
                                          activeColor: Color(0xffFFAA00),
                                          value: _checkBoxValue,
                                          onChanged:(bool? value){
                                            setState((){
                                              _checkBoxValue =  value!;
                                            });
                                          },
                                        ),

                                        Text('약관 전체동의 '),
                                      ]
                                  ),
                                  SizedBox(height: ScreenUtil().setHeight(4)),
                                  Container( height: 1, width: double.maxFinite, color: Colors.grey, ),

                                  SizedBox(height: ScreenUtil().setHeight(4)),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        // SizedBox(width: ScreenUtil().setWidth(15),),
                                        Row(
                                          children:[Checkbox(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            checkColor: Colors.white,
                                            activeColor: Color(0xffFFAA00),
                                            value: _checkBoxValue,
                                            onChanged:(bool? value){
                                              setState((){
                                                _checkBoxValue =  value!;
                                              });
                                            },
                                          ),
                                          Text('개인정보 수집 동의 (필수)'),
                                          ]
                                        ),
                                        IconButton(
                                            onPressed: () {
                                            },
                                            icon: Icon(Icons.arrow_forward_ios_rounded))
                                      ]
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        Row(
                                          children:[
                                          Checkbox(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            checkColor: Colors.white,
                                            activeColor: Color(0xffFFAA00),
                                            value: _checkBoxValue,
                                            onChanged:(bool? value){
                                              setState((){
                                                _checkBoxValue =  value!;
                                              });
                                            },
                                          ),
                                          Text('서비스 이용약관 동의 (필수)'),
                                          ]),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons
                                                .arrow_forward_ios_rounded))
                                      ]
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                          Row(
                                          children:[
                                          Checkbox(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            checkColor: Colors.white,
                                            activeColor: Color(0xffFFAA00),
                                            value: _checkBoxValue,
                                            onChanged:(bool? value){
                                              setState((){
                                               _checkBoxValue =  value!;
                                              });
                                            },
                                          ),

                                        Text('개인정보 수집 이용 (필수)'),]),
                                        IconButton(onPressed: () {},
                                            icon: Icon(Icons
                                                .arrow_forward_ios_rounded))
                                      ]
                                  ),
                                  SizedBox(width: ScreenUtil().setHeight(60),),

                                  Container(
                                      height: ScreenUtil().setHeight(55),
                                      width: ScreenUtil().setHeight(400),
                                    child:
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => loginPage()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(0xffFFAA00),

                                          ),
                                        child: Text('회원가입 완료')
                                  )
                                  )
                                ],
                              )
                            ]);
                      },
                      child: Text(
                        '회원가입 계속 ',
                        style: TextStyle(fontSize: ScreenUtil().setSp(14)),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xffFFAA00),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(33),
                        ),
                      ),
                    )
                ),

                //SizedBox(height: ScreenUtil().setHeight(50)),
              ],
            ),

          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
