import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
//  import 'package:sizer/sizer.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo.shade900,
      body: Column(
        children: [
          Expanded(flex: 2, child: Lottie.asset('inm/o.json')),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(child: Container()),
              Expanded(
                flex: 5,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  onSaved: (val) {
                    //     myemail = val!;
                  },
                  maxLength: 30,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "كلمة مرور المدير",
                      labelStyle: TextStyle(color: Colors.black, fontSize: 14),
                      suffixStyle: TextStyle(color: Colors.blue),
                      hintStyle: TextStyle(color: Colors.blue),
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1)),
                      prefixIcon: Icon(
                        Icons.text_fields,
                        color: Colors.blue,
                      )),
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container()),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          color: Colors.grey,
                          blurRadius: 1,
                        ),
                      ],
                      border: Border.all(width: 0.8, color: Colors.black),
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    // width: 85,
                    child: MaterialButton(
                      child: Text(
                        "تسجيل دخول",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.blue.shade900),
                      ),
                      onPressed: () async {
                        //    Navigator.of(context).pushNamed("page1");
                      },
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          color: Colors.grey,
                          blurRadius: 1,
                        ),
                      ],
                      border: Border.all(width: 0.8, color: Colors.black),
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    // width: 85,
                    child: MaterialButton(
                      child: Text(
                        "تخطي",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.blue.shade900),
                      ),
                      onPressed: () async {
                        Navigator.of(context).pushNamed("page1");
                      },
                    ),
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
