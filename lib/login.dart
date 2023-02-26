import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,
      body: ListView(
        children: [
          Container(
            height: 20.h,
            width: double.infinity,
            // color: Colors.red,
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    // color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(right: 26.w),
                      child: IconButton(
                        color: Colors.white,
                        icon: Icon(
                          Icons.arrow_back_ios_new_sharp,
                          size: 27.sp,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    //  color: Colors.black,
                    height: 12.h,
                    // width: 10.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(170),
                        // borderRadius: BorderRadius.only(topLeft:Radius.circular(60) ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/s2.jpg"),
                            fit: BoxFit.fill)),
                  ),
                ),
                Expanded(
                    flex: 5,
                    child: Container(
                        //   color: Colors.yellow,
                        )),
              ],
            ),
          ),
          ///////////////////////////////////////////////////////////////////////////////////////
          Container(
            //  height: 80.h,
            // color: Colors.white,

            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/s3.jpg",
                  ),
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  fit: BoxFit.fill),
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60)),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  height: 1.h,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Form(
                      //  key: formstate,
                      child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.number,
                        onSaved: (val) {
                          //     myemail = val!;
                        },
                        maxLength: 30,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: " الدخول id",
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 14.sp),
                            suffixStyle: TextStyle(color: Colors.blue),
                            hintStyle: TextStyle(color: Colors.blue),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1)),
                            prefixIcon: Icon(
                              Icons.text_fields,
                              color: Colors.blue,
                            )),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Container(
                        height: 8.h,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                color: Colors.grey,
                                blurRadius: 1,
                              ),
                            ],
                            border:
                                Border.all(width: 0.5.w, color: Colors.black),
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          width: 85.w,
                          child: MaterialButton(
                            child: Text(
                              "تسجيل دخول",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                  color: Colors.blue.shade900),
                            ),
                            onPressed: () async {},
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Container(
                  //   color: Colors.red,
                  height: 12.5.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        color: Colors.grey,
                        blurRadius: 1,
                      ),
                    ],
                    border: Border.all(width: 0.3.w, color: Colors.black),
                    color: Colors.indigo.shade900,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
