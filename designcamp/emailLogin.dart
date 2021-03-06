import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'welcomePage.dart';
import 'loginPage.dart';

// ignore: camel_case_types
class emailLoginPage extends StatelessWidget  {
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
        title: Text('로그인',
          style: TextStyle(fontSize: ScreenUtil().setSp(18),
              color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                SizedBox(height: ScreenUtil().setHeight(90)),
                Container(
                  height: ScreenUtil().setHeight(115),
                  width: ScreenUtil().setWidth(86),
                  child: SvgPicture.asset(
                    'assets/liveQ_logo.svg',
                  ),),
                SizedBox(height: ScreenUtil().setHeight(50)),
                Container(
                  height: ScreenUtil().setHeight(43),
                  width: ScreenUtil().setWidth(287),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '아이디',
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
                    child:TextFormField(
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
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   TextButton(
                     child: Text(
                       "아이디 찾기",
                       style: TextStyle(fontSize: ScreenUtil().setSp(14),
                         color: Colors.grey,decoration: TextDecoration.underline,),
                     ),
                     onPressed: () {

                     },
                   ),
                   TextButton(
                     child: Text(
                       "비밀번호 찾기",
                       style: TextStyle(fontSize: ScreenUtil().setSp(14),
                         color: Colors.grey,decoration: TextDecoration.underline,),
                     ),
                     onPressed: () {

                     },
                   ),
                 ],
               ),
                SizedBox(height: ScreenUtil().setHeight(123)),
                Container(

                  height: ScreenUtil().setHeight(55),
                  width: ScreenUtil().setHeight(400),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => welcomePage()),
                      );
                    },
                    child: Text('로그인',
                      style: TextStyle(fontSize: ScreenUtil().setSp(14)),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary:  const Color(0xffFFAA00),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                    ),),
                )
                //SizedBox(height: ScreenUtil().setHeight(50)),
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
