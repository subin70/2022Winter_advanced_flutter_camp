import 'package:flutter_camp_livq_ui/pages/signUpPage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import '../Config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'emailLoginPage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'mainPage.dart';

// ignore: camel_case_types
class welcomePage extends StatelessWidget  {


  @override
  Widget build(BuildContext context) {
    final List<Widget> steps = [
      _step1(),
      _step2(),
      _step3(),
    ];
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
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  constraints: const BoxConstraints.expand(
                      height: 480
                  ),
                  child :
                  Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return steps[index];
                    },
                    loop: false,
                    autoplay: true,
                    itemCount: steps.length,
                    viewportFraction: 0.8,
                    scale: 0.9,
                    pagination: SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                          color: Colors.grey[200],
                          activeColor: Color(0XFF874BD9)),
                    ),
                  ),

                  //
                ),
                Text('last page'),


              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


Widget _step1() {
  return Container(
      child: Column(children: [
        Text('???????????? ?????? ????????????',
        style: TextStyle(fontSize: ScreenUtil().setSp(18)),),
        Text('???????????????! ',
          style: TextStyle(fontSize: ScreenUtil().setSp(18)),),
        Container(
          color: Color(0xffEDE9FE),
          height: ScreenUtil().setHeight(205),
          width: ScreenUtil().setWidth(340),
          child: SvgPicture.asset(
            'assets/img2.svg',
          ),),
        SizedBox(height: ScreenUtil().setHeight(20)),
        Text('????????? ?????? ????????? ????????? ??????????????????',
            style: TextStyle(fontSize: ScreenUtil().setSp(16)),),
        SizedBox(height: ScreenUtil().setHeight(9),),
        Text('????????? : ????????? ????????? ??????',
            style: TextStyle(fontSize: ScreenUtil().setSp(14)),),
        Text('????????? ????????? ?????? ?????? ??? ?????? ?????????',
            style: TextStyle(fontSize: ScreenUtil().setSp(14)),),


      ]));
}

Widget _step2() {
  return Container(
      child: Column(children: [

        Column(
            children: [
              Text('???????????? ?????? ????????????',
                style: TextStyle(fontSize: ScreenUtil().setSp(18)),),
          Text(
            '???????????????! ',
            style: TextStyle(fontSize: ScreenUtil().setSp(18)),
          ),
          Container(
            color: Color(0xffEDE9FE),
            height: ScreenUtil().setHeight(205),
            width: ScreenUtil().setWidth(340),
            child: SvgPicture.asset(
              'assets/img1.svg',
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(20)),
          Text(
            '???????????? ?????? ????????? ?????????',
            style: TextStyle(fontSize: ScreenUtil().setSp(16)),
          ),
              SizedBox(height: ScreenUtil().setHeight(9),),
          Text(
            '???????????? ????????? ??????',
            style: TextStyle(fontSize: ScreenUtil().setSp(14)),
          ),
          Text(
            '???????????? ????????? ???????????????',
            style: TextStyle(fontSize: ScreenUtil().setSp(14)),
          ),
    ]),
  ]));
}

Widget _step3() {
  return Container(
      child: Column(children: [
        Column(
            children: [
              Text(
                '???????????? ?????? ?????? ',
                style: TextStyle(fontSize: ScreenUtil().setSp(18)),
              ),
              Text(
                '???????????????! ',
                style: TextStyle(fontSize: ScreenUtil().setSp(18)),
              ),
              Container(
                color: Color(0xffFFF9C4),
                height: ScreenUtil().setHeight(205),
                width: ScreenUtil().setWidth(340),
                child: SvgPicture.asset(
                  'assets/img3.svg',
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(20)),
              Text(
                '???????????? ?????? ????????? ???????????????',
                style: TextStyle(fontSize: ScreenUtil().setSp(16)),
              ),
              SizedBox(height: ScreenUtil().setHeight(9),),
              Text(
                '????????? ????????? ??????????????? ???????????????',
                style: TextStyle(fontSize: ScreenUtil().setSp(14)),
              ),
              Text(
                '?????? ?????? ????????? ?????? ??? ?????????',
                style: TextStyle(fontSize: ScreenUtil().setSp(14)),
              ),

            ]),
      ]));
}
